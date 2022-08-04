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

You will want to make a directory in which to work and create a VMMaker image.
For riscv64, this directory was _opensmalltalk-vm-rv64_.
```
git clone https://github.com/OpenSmalltalk/opensmalltalk-vm opensmalltalk-vm-rv64
cd opensmalltalk-vm-rv64/image
```

## VMMaker Image

The first thing to do is create a VMMaker image.

The _image_ directory contains a number of scripts and Smalltalk files.  In this case
```
./buildspurtrunkvmmaker64image.sh
```
Should download a Squeak trunk image and then run
	buildspurtrunkreaderimage.sh trunk6-64.image

Note that this sometimes breaks.
In my case, my desktop computer is a Raspberry Pi 4 running Linux.
Instead of _sqcogspur64linuxht/squeak_, the
downloaded VM is _sqcogspur64ARMv8linuxht/squeak_.

As the recent trunk image is proper, I just run
```
sqcogspur64ARMv8linuxht/squeak trunk6-64.image
```
then open a File List and load _Buildspurtrunkvmmaker64image.st_.
This should load the proper code and quit the image.  If a problem here,
just save the image as VMMaker.image.

### VMMaker Changes

We want to genetrate a file _src/plugins/SqueakFFIPrims/RiscV64FFIPlugin.c_.

So we need to add code to category _VMMaker-Plugins-FFI_
as a subclass of _ThreadedFFIPlugin_.

The purpose of life for this plugin is to be able to call C library functions.
Basically, the float and integer registers are set up, values pushed on the stack,
and values transliterated between Smalltalk and C.  Fortunately, there is plenty
of code which does this, so a basic understanding of how bytecodes work and how
objects are represented, how values are found and translated should get you through this.

For details see
 * http://www.mirandabanda.org/cogblog/on-line-papers-and-presentations/

Looking at ThreadedARM64FFIPlugin, I saw that most code would be identical, so just
subclassed for ThreadedRiscV64FFIPlugin.  I was also fortunate to be able to subclass
ThreadedFFICalloutStateForARM64 as ThreadedFFICalloutStateForRiscV64.

If you have built the VMMaker image as above, a browse of
```Smalltalk
  ThreadedRiscV64FFIPlugin class>>calloutStateClass
```
should show ^ThreadedFFICalloutStateForRiscV64.

The class method #moduleName is ^'RiscV64FFIPlugin', so the generated file
is _src/plugins/SqueakFFIPrims/RiscV64FFIPlugin.c_.

## makefiles, configure

## C Code needed

### building/linux64riscv/squeak.stack.spur

## build.debug/mvm

## FFI, the Foreign Function Interface

### Alien







