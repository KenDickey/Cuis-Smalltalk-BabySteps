# Porting to a new CPU, the RISCV RV64G Experience

This file describes the overall "nuts and bolts" of porting
the opensmalltalk-vm to RISCV 64.
We hope these notes are helpful in porting the Smalltalk Virtual Machine 
to any new CPU architecture.

Please read the README.md and CONTRIBUTING.md files for basic orientation.

As the opensmalltalk-vm build process uses
scripts and templates to generate a working VM, let's start with strategy.

The VMMaker Smalltalk tools include cross compiling Smalltalk VM code
into C files which are combined in a framework with plugins and compiled to
build a working VM which works with a keyboard, display, and mouse.

To get a working VM, one needs to
[A] know the processor ABI
(register and stack conventions, how to call C code),
[B] write the VMMaker Smalltalk classes which get translated into C,
and [C] write some C glue code for required VM primitive operations.

It is good to have some basic understanding of the directory framework
to look for Smalltalk and C code which is close to what is needed.
The basic strategy is to "copy and change" or to subclass what exists.

In this case, the ARMv8 (aarch64/arm64) RISC architecture is
fairly close in design to riscv64.
The spur stack vm (no JIT) is the simplest to start with.

## VMMaker Image

The first thing to do is create a VMMaker image.

You will want to make a directory in which to work and create a VMMaker image.
For riscv64, this directory was `opensmalltalk-vm-rv64`.
```
git clone https://github.com/OpenSmalltalk/opensmalltalk-vm opensmalltalk-vm-rv64
cd opensmalltalk-vm-rv64/image
```

The `image` directory contains a number of scripts and Smalltalk files.  In this case
```
./buildspurtrunkvmmaker64image.sh
```
Should download a Squeak trunk image and then run
	buildspurtrunkreaderimage.sh trunk6-64.image

Note that this sometimes breaks.
In my case, my desktop computer is a Raspberry Pi 4 running Linux.
Instead of `sqcogspur64linuxht/squeak`, the
downloaded VM is `sqcogspur64ARMv8linuxht/squeak`.

As the recent trunk image is proper, I just run
```
sqcogspur64ARMv8linuxht/squeak trunk6-64.image
```
then open a File List and load `Buildspurtrunkvmmaker64image.st`.
This should load the proper code and quit the image.  If a problem here,
just save the image as VMMaker.image.

### VMMaker Changes

We want to genetrate a file `src/plugins/SqueakFFIPrims/RiscV64FFIPlugin.c`.

So we need to add code to category `VMMaker-Plugins-FFI`
as a subclass of `ThreadedFFIPlugin`.

The purpose of life for this plugin is to be able to
call C Plugins and library functions.
Basically, the float and integer registers are set up, values pushed on the stack,
and values transliterated between Smalltalk and C.

For RiscV64, like ARMv8, floats are generally in float registers, integers in
integer registers, small structs in integer registers, larger structs are caller
allocated and pointer to this in an integer register gets filled in.  Many details on
ABI rules for this.

A basic understanding of how bytecodes work and how
objects are represented, how values are found and
translated should get you through this.
For details see
 * http://www.mirandabanda.org/cogblog/on-line-papers-and-presentations/

Most of the value translation mechanics (e.g.
a float represented in Smalltalk vs a machine float,
getting a value from an instance variable, strings,.. ) is already
done for you.
The bulk of the detail work has to do with register and stack usage for passing
arguments and results.  

Looking at ThreadedARM64FFIPlugin, I saw that most code would be identical, so just
subclassed for ThreadedRiscV64FFIPlugin.  I was also fortunate to be able to subclass
ThreadedFFICalloutStateForARM64 as ThreadedFFICalloutStateForRiscV64.

If you have built the VMMaker image as above, a browse of
```Smalltalk
  ThreadedRiscV64FFIPlugin class>>calloutStateClass
```
should show `^ThreadedFFICalloutStateForRiscV64`.

The basic strategy is to set up a ThreadedFFICalloutState with register values.
See `>>ffiCalloutTo:SpecOnStack:in:`, `>>ffiCall:ArgArrayOrNil:NumArgs:` for details.

The class method `#moduleName` is `^'RiscV64FFIPlugin'`, so the generated file
is `src/plugins/SqueakFFIPrims/RiscV64FFIPlugin.c`.

Note also `ThreadedRiscV64FFIPlugin class>>identifyingPredefinedMacros`, which
is explained a bit below on configuration.

When all is set up, one can use the VMMaker tool or
a simple Workspace to generate the C files.  In a workspace:
```Smalltalk
 plugins := #(ThreadedRiscV64FFIPlugin SqueakFFIPrims FFIPlugin).
 plugins do: [:pluginName| (Smalltalk classNamed: pluginName) touch].
 (VMMaker
	makerFor: StackInterpreter
	and: nil with: #()
	to: VMMaker sourceTree, '/src'
	platformDir: VMMaker sourceTree, '/platforms'
	including: plugins) generateExternalPlugins.
```
If you hit a speed bump in generating the VMMaker image, you
might get an error complaining about missing definitions.
This can be fixed by initializing the CoInterpreter and
doing the above again.
```Smalltalk
CoInterpreter initializeWithOptions: Dictionary new. 
```

## makefiles, configure

The build script for linux, `mvm`, runs `configure` and generates
directories and make files for selected plugins.

For Unix/Linux, the `configure` script in `platforms/unix/configure/` needs
to know about your processor's compiler flags.

You can ask `gcc` what it knows about this.
```
gcc -dumpmachine
touch empty.c
gcc -dM -E empty.c |less
```
For `configure.ac` and `configure` there is a place
to specify gcc compile flags for your CPU architecture.
```
case $build_arch in
  ... ...
	riscv64) TARGET_ARCH="-march=rv64gcv -mabi=lp64d"
 	CFLAGS="-g -O2 -D__riscv64__"
 	;;

	*)
  ... ...
 ```
The selected CPU compiler flag(s) should be the same as those
returned from `ThreadedRiscV64FFIPlugin class>>identifyingPredefinedMacros`

For the stack vm on Linux, we need `building/linux64riscv/squeak.stack.spur`
with three sub directories for build, build.debug and build.assert.

Each of these directories will have a build script named `mvm` which you can copy
from a similar sibling directory with zero or more minor changes.

## C Code needed

We need to mate some C code primitive support with the code generated by VMMaker.

## FFI, the Foreign Function Interface

### Alien





### Files

'*' -> changed; else new

#### VMMaker
```
 CallbackForRiscV64
 ThreadedFFICalloutStateForRiscV64
 ThreadedRiscV64FFIPlugin
* ThreadedFFIPluginClass-preambleCCode
```
#### opensmalltalk-vm
```
 platforms/unix/config/
	* configure.ac
	* configure
 platforms/unix/vm
	* include_ucontext.h
	* sqUnixITimerHeartbeat.c
	* sqUnixHeartbeat.c
	* sqUnixITimerTickerHeartbeat.c
 platforms/Cross/plugins/IA32ABI/
	riscv64abicc.c
	* ia32abi.h
	* xabicc.c
 src/plugins/SqueakFFIPrims
	RiscV64FFIPlugin.c [VMMaker generated]
	* SqueakFFIPrims.c [VMMaker generated]
* build/linux64riscv/squeak.stack.spur
	plugins.ext [copy, without 'B3DAcceleratorPlugin']
	plugins.int [copy]
	build{,.debug,.assert}/mvm
```
#### Alien
  Alien-Core
	CallbackForRiscV64
	* FFICallbackThunk class>>initializerForPlatform
	FFICallbackThunk>>initializeRiscV64st
	
#
