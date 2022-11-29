'From Cuis 6.0 [latest update: #5559] on 29 November 2022 at 3:26:00 pm'!
'Description Zag Smalltalk

https://github.com/dvmason/Zag-Smalltalk'!
!provides: 'ASTSmalltalk' 1 4!
SystemOrganization addCategory: 'ASTSmalltalk-AST'!
SystemOrganization addCategory: 'ASTSmalltalk-Compiler'!
SystemOrganization addCategory: 'ASTSmalltalk-Threaded'!
SystemOrganization addCategory: 'ASTSmalltalk-Tokens'!
SystemOrganization addCategory: 'ASTSmalltalk-IR'!
SystemOrganization addCategory: 'ASTSmalltalk-Image'!


!classDefinition: #ASClassNode category: 'ASTSmalltalk-AST'!
Object subclass: #ASClassNode
	instanceVariableNames: 'name classVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASClassNode class' category: 'ASTSmalltalk-AST'!
ASClassNode class
	instanceVariableNames: ''!

!classDefinition: #ASStatement category: 'ASTSmalltalk-AST'!
Object subclass: #ASStatement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASStatement class' category: 'ASTSmalltalk-AST'!
ASStatement class
	instanceVariableNames: ''!

!classDefinition: #ASExpression category: 'ASTSmalltalk-AST'!
ASStatement subclass: #ASExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASExpression class' category: 'ASTSmalltalk-AST'!
ASExpression class
	instanceVariableNames: ''!

!classDefinition: #ASRepeat category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASRepeat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASRepeat class' category: 'ASTSmalltalk-AST'!
ASRepeat class
	instanceVariableNames: ''!

!classDefinition: #ASReturn category: 'ASTSmalltalk-AST'!
ASStatement subclass: #ASReturn
	instanceVariableNames: 'expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASReturn class' category: 'ASTSmalltalk-AST'!
ASReturn class
	instanceVariableNames: ''!

!classDefinition: #ASVariable category: 'ASTSmalltalk-AST'!
Object subclass: #ASVariable
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASVariable class' category: 'ASTSmalltalk-AST'!
ASVariable class
	instanceVariableNames: ''!

!classDefinition: #ASCompiler category: 'ASTSmalltalk-Compiler'!
Object subclass: #ASCompiler
	instanceVariableNames: 'classes methods selectors definingClass definingMethod currentScope freeSelectors methodsAlreadyProcessed methodsToProcess'
	classVariableNames: 'ClassIndices ClassMap'
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASCompiler class' category: 'ASTSmalltalk-Compiler'!
ASCompiler class
	instanceVariableNames: 'ClassIndices ClassMap'!

!classDefinition: #ASPharoVisitor category: 'ASTSmalltalk-Compiler'!
Object subclass: #ASPharoVisitor
	instanceVariableNames: 'compiler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASPharoVisitor class' category: 'ASTSmalltalk-Compiler'!
ASPharoVisitor class
	instanceVariableNames: ''!

!classDefinition: #ASZigGenerator category: 'ASTSmalltalk-Compiler'!
Object subclass: #ASZigGenerator
	instanceVariableNames: 'compiler stream'
	classVariableNames: 'Symbols'
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASZigGenerator class' category: 'ASTSmalltalk-Compiler'!
ASZigGenerator class
	instanceVariableNames: 'Symbols'!

!classDefinition: #ASTThreadFormat category: 'ASTSmalltalk-Threaded'!
Object subclass: #ASTThreadFormat
	instanceVariableNames: 'stream method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Threaded'!
!classDefinition: 'ASTThreadFormat class' category: 'ASTSmalltalk-Threaded'!
ASTThreadFormat class
	instanceVariableNames: ''!

!classDefinition: #ASToken category: 'ASTSmalltalk-Tokens'!
Object subclass: #ASToken
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASToken class' category: 'ASTSmalltalk-Tokens'!
ASToken class
	instanceVariableNames: ''!

!classDefinition: #ASSimple category: 'ASTSmalltalk-Tokens'!
ASToken subclass: #ASSimple
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSimple class' category: 'ASTSmalltalk-Tokens'!
ASSimple class
	instanceVariableNames: ''!

!classDefinition: #ASIdentifier category: 'ASTSmalltalk-Tokens'!
ASSimple subclass: #ASIdentifier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASIdentifier class' category: 'ASTSmalltalk-Tokens'!
ASIdentifier class
	instanceVariableNames: ''!

!classDefinition: #ASLiteralToken category: 'ASTSmalltalk-Tokens'!
ASSimple subclass: #ASLiteralToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASLiteralToken class' category: 'ASTSmalltalk-Tokens'!
ASLiteralToken class
	instanceVariableNames: ''!

!classDefinition: #ASSpecial category: 'ASTSmalltalk-Tokens'!
ASLiteralToken subclass: #ASSpecial
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSpecial class' category: 'ASTSmalltalk-Tokens'!
ASSpecial class
	instanceVariableNames: ''!

!classDefinition: #ASString category: 'ASTSmalltalk-Tokens'!
ASLiteralToken subclass: #ASString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASString class' category: 'ASTSmalltalk-Tokens'!
ASString class
	instanceVariableNames: ''!

!classDefinition: #ASSymbol category: 'ASTSmalltalk-Tokens'!
ASString subclass: #ASSymbol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSymbol class' category: 'ASTSmalltalk-Tokens'!
ASSymbol class
	instanceVariableNames: ''!

!classDefinition: #ASSyntax category: 'ASTSmalltalk-Tokens'!
ASToken subclass: #ASSyntax
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSyntax class' category: 'ASTSmalltalk-Tokens'!
ASSyntax class
	instanceVariableNames: ''!

!classDefinition: #ASReturnToken category: 'ASTSmalltalk-Tokens'!
ASSyntax subclass: #ASReturnToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASReturnToken class' category: 'ASTSmalltalk-Tokens'!
ASReturnToken class
	instanceVariableNames: ''!

!classDefinition: #ASTBlock category: 'ASTSmalltalk-IR'!
Object subclass: #ASTBlock
	instanceVariableNames: 'blockNumber sequence'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTBlock class' category: 'ASTSmalltalk-IR'!
ASTBlock class
	instanceVariableNames: ''!

!classDefinition: #ASGenerator category: 'ASTSmalltalk-Image'!
Object subclass: #ASGenerator
	instanceVariableNames: 'fields header address extra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Image'!
!classDefinition: 'ASGenerator class' category: 'ASTSmalltalk-Image'!
ASGenerator class
	instanceVariableNames: ''!


!ASClassNode commentStamp: '<historical>' prior: 0!
I represent a Class that contains a number of methods and has super-classes.
!

!ASStatement commentStamp: '<historical>' prior: 0!
I have subclasses for all the statments that can exist in the body of a method or a block.
!

!ASExpression commentStamp: '<historical>' prior: 0!
I have subclasses for all the expressions that can exist.

Note that ASBlock is also an ASExpression although the class taxonomy doesn't reflect it.
!

!ASRepeat commentStamp: '<historical>' prior: 0!
I represent a loop.

I am only generated as part of inlining and compilation

I am always the result of an #whileTrue: or related message, or other tail-recursive methods
!

!ASReturn commentStamp: '<historical>' prior: 0!
I am the only non-expression statement type
!

!ASVariable commentStamp: '<historical>' prior: 0!
I represent a variable (local, parameters, inherited local/parameters, instance, class, shared).
!

!ASCompiler commentStamp: '<historical>' prior: 0!
I implement the generic code for a Smalltalk -> AST compiler.

I have subclasses to accept various input formats, notably Pharo ASTs and sourcecode
!

!ASPharoVisitor commentStamp: '<historical>' prior: 0!
I implement the visitor pattern to walk a Pharo AST and transform it to our AST.
!

!ASZigGenerator commentStamp: '<historical>' prior: 0!
I generate Zig code equivalent to the built program captured by an ASCompiler
!

!ASTThreadFormat commentStamp: '<historical>' prior: 0!
I format an IRMethod to generate Zig code to create a method thread.
!

!ASToken commentStamp: '<historical>' prior: 0!
I am the tokens for the AST scanner
!

!ASGenerator commentStamp: '<historical>' prior: 0!
I handle all the in-heap objects, except BlockClosures.

When first called, I ask the image writer to allocate space for me, and schedule me for processing, then I gather all the fields and indexable elements from the object.

When processing, I look up all the objects and get the appropriate heap object for them.

Finally I am called to write the fields so I output the header, a possible supplementary size, and all the values I accumulated.

This 3-phase process is (a) to handle cycles in the heap, and (b) to allow the heap size, classes and symbols to be known right after the image header.
!

!ASClassNode methodsFor: 'comparing' stamp: 'KenD 11/29/2022 14:59:26'!
= other
	^ name = other name
! !

!ASClassNode methodsFor: 'comparing' stamp: 'KenD 11/29/2022 14:59:26'!
hash
	^ name hash
! !

!ASClassNode methodsFor: 'accessing' stamp: 'KenD 11/29/2022 14:59:26'!
name

	^ name
! !

!ASClassNode methodsFor: 'initialization' stamp: 'KenD 11/29/2022 14:59:26'!
from: aClass

	name := aClass name.
	self halt.
	classVariables := aClass classPool keys
! !

!ASExpression methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:24:56'!
tell: aCompiler youAreSent: aSymbol

	^ aCompiler sentToUnknownObject: aSymbol
! !

!ASReturn methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:24:12'!
expression

	^ expression
! !

!ASReturn methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:24:12'!
expression: anASNode
	expression := anASNode
! !

!ASReturn methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:24:12'!
= other

	^ self class = other class and: [ self expression = other expression ]
! !

!ASReturn methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:24:12'!
isReturn
	^ true
! !

!ASReturn methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:24:12'!
acceptVisitor: aVisitor

	^ aVisitor visitReturn: self
! !

!ASReturn methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:24:12'!
printOn: s

	s << self className << ' expression: ('.
	expression printOn: s.
	s << ')'
! !

!ASReturn class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:24:12'!
expression: anASNode
^self new expression: anASNode
! !

!ASVariable methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:16:20'!
tell: aCompiler youAreSent: aSymbol

	^ aCompiler sentToUnknownObject: aSymbol
! !

!ASVariable methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:16:20'!
= other

	^ self class = other class and: [ self name = other name ]
! !

!ASVariable methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:16:20'!
name

	^ name
! !

!ASVariable methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:16:20'!
name: aSymbol

	name := aSymbol
! !

!ASVariable methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:16:20'!
printOn: s

	s << self className << ' ' <<
	name 
! !

!ASVariable class methodsFor: 'reflective operations' stamp: 'KenD 11/29/2022 15:16:20'!
doesNotUnderstand: aMessage

	aMessage selector numArgs > 0 ifTrue: [ 
		^ super doesNotUnderstand: aMessage ].
	^ self name: aMessage selector
! !

!ASVariable class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:16:20'!
name: aString
	^ self new name: aString
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
compileMethod: aCompiledMethod
	^ self subclassResponsibility 
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
definingClass: aClass

	definingClass := aClass.
	classes add: aClass instanceSide.
	classes add: aClass classSide.
	currentScope := aClass
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
definingMethod: aMethod
	definingMethod := aMethod.
	methods add: aMethod
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
inScope: anASMethodOrBlock do: aFullBlockClosure
	| savedScope |
	savedScope := currentScope.
	currentScope := anASMethodOrBlock.
	aFullBlockClosure ensure: [ currentScope := savedScope ]
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
lookup: aSymbol
	^ currentScope lookup: aSymbol
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
classes

	^ classes collect: #instanceSide
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
definingClass
	^ definingClass
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
definingMethod
	^ definingMethod
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
methods
	^ methods
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
selectors
	^ selectors
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sent: selector toBlock: anASBlock

		self send: selector toClass: BlockClosure 
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sent: selector toGlobal: string

		self send: selector toClass: (Smalltalk at: string asSymbol)
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sent: selector toLiteral: aLiteral

	self send: selector toClass: aLiteral class
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sent: selector toSelf: unused

		self send: selector toClass: definingClass
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sentToUnknownObject: selector

	freeSelectors add: selector.
	classes do: [ : aClass | 	self send: selector toClass: aClass ]
! !

!ASCompiler methodsFor: 'inlining' stamp: 'KenD 11/29/2022 15:01:08'!
inlineMethods
	methods do: [ : aMethod |
		ASCheckMethodVisitor new visit: aMethod ]
! !

!ASCompiler methodsFor: 'inlining' stamp: 'KenD 11/29/2022 15:01:08'!
inlineTraditionalMethods

	methods do: [ :aMethod | ASCheckTraditionalMethodVisitor new visit: aMethod ]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
addClass: aClass

	| astClass |
	astClass := ClassMap at: aClass ifAbsent: [ 
		            aClass ].
	(classes includes: astClass) ifTrue: [ ^ astClass ].
	classes add: astClass.
	astClass isClassSide
		ifTrue: [ classes add: astClass instanceSide ]
		ifFalse: [ classes add: astClass classSide ].
	freeSelectors do: [ :selector | 
		self send: selector toClass: astClass ].
	^ astClass
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
addMethod: method
	(methodsAlreadyProcessed includes: method) ifFalse: [ methodsToProcess add: method ]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
buildFromClass: aClass selector: selector

	self send: selector toClass: aClass.
	self transitiveClosure
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
findClass: aClass

	| astClass |
	astClass := ClassMap at: aClass ifAbsent: [ aClass ].
	(classes includes: astClass) ifTrue: [ ^ astClass ].
	classes add: astClass.
	astClass isClassSide
		ifTrue: [ classes add: astClass instanceSide ]
		ifFalse: [ classes add: astClass classSide ].
	^ astClass
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
selector: selector fromClass: aClass

	^ aClass methodDictionary
		  at: selector
		  ifPresent: [ aClass >> selector ]
		  ifAbsent: [ 
			  aClass superclass ifNotNil: [ :sc | 
				  self selector: selector fromClass: (self addClass: sc) ] ]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
send: selector toClass: aClass

	(self selector: selector fromClass: (self addClass: aClass)) ifNotNil: [ :method | 
		selectors add: selector.
		self addMethod: method ]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
transitiveClosure

	| toProcess |
	[ methodsToProcess isEmpty ] whileFalse: [ 
		toProcess := methodsToProcess.
		methodsToProcess := Set new.
				methodsAlreadyProcessed addAll: toProcess.
		toProcess do: [: method |
			self compileMethod: method ].
		]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
zigString

	| visitor |
	visitor := ASZigGenerator new compiler: self.
	^ String streamContents: [ :s | 
		  visitor stream: s.
		  methods do: [ :method | visitor visit: method ] ]
! !

!ASCompiler methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:01:08'!
initialize

	super initialize.
	classes := Set new.
	selectors := Set new.
	freeSelectors := Set with: #initialize.
	methods := Set new.
	methodsAlreadyProcessed := Set new.
	methodsToProcess := Set new.
	self addClass: True.
	self addClass: False.
! !

!ASCompiler class methodsFor: 'class initialization' stamp: 'KenD 11/29/2022 15:01:08'!
initialize

	ClassIndices := #( Object False True UndefinedObject Symbol Character
	                   SmallInteger Float Array String Class Metaclass
	                   Behavior BlockClosure Method MethodDictionary
	                   System Return Send Literal Load Store SymbolTable
	                   Dispatch ClassTable Magnitude Number ClassDescription
	                   Boolean ).
	ClassMap := Dictionary new.
	ClassMap at: ByteString put: ASTString.
	ClassMap at: ByteString class put: ASTString class.
	ASTObject withAllSubclassesDo: [ :class | 
		(Smalltalk
			 at: (class name allButFirst: 3) asSymbol
			 ifAbsent: [ nil ]) ifNotNil: [ :pharoClass | 
			ClassMap at: pharoClass instanceSide put: class instanceSide.
			ClassMap at: pharoClass classSide put: class classSide ] ]
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visit: aRBNode
	^ aRBNode acceptVisitor: self	
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitArgumentVariableNode: aRBVariableNode

	^ ASRef variable: (ASArg new name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitArrayNode: aRBArrayNode

	^ ASArray statements:
		  (aRBArrayNode statements collect: [ :statement | 
			   self visit: statement ] as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitAssignmentNode: aRBAssignmentNode
	^ ASAssign
		  variable: (compiler lookup: aRBAssignmentNode variable name)
		  expression: (self visit: aRBAssignmentNode value)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitBlockNode: aRBBlockNode

	^ ASBlock
		  arguments: aRBBlockNode argumentNames
		  locals: aRBBlockNode temporaryNames
		  body: (aRBBlockNode statements collect: [ :statement | 
				   self visit: statement ] as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitCascadeNode: aRBCascadeNode

	^ ASCascade
		  target: (self visit: aRBCascadeNode receiver)
		  sends: (aRBCascadeNode messages
				   collect: [ :message | 
					   ASSend
						   selector: message selector
						   args: (message arguments collect: [: arg| self visit: arg  ] as: Array) ]
				   as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitClassVariableNode: aRBVariableNode

	^ ASRef variable: (ASClassVar name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitGlobalVariableNode: aRBVariableNode

	^ ASRef variable: (ASGlobal name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitInstanceVariableNode: aRBVariableNode

	^ ASRef variable: (ASInstance name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitLiteralArrayNode: aRBLiteralArrayNode
	^ ASLiteral literal: (aRBLiteralArrayNode contents collect: #value as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitLiteralValueNode: aRBLiteralValueNode

	^ ASLiteral literal: aRBLiteralValueNode value
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitMessageNode: aRBMessageNode

	| target selector |
	target := self visit: aRBMessageNode receiver.
	selector := aRBMessageNode selector.
	target tell: compiler youAreSent: selector.
	^ ASSend
		  target: target
		  selector: selector args: (aRBMessageNode arguments
				   collect: [ :arg | self visit: arg ]
				   as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitMethodNode: aRBMethodNode

	| selector method |
	selector := aRBMethodNode selector.
	compiler definingClass: aRBMethodNode methodClass.
	method := ASMethodNode
		          class: aRBMethodNode methodClass
		          selector: selector
		          arguments:
		          (aRBMethodNode arguments collect: #name as: Array)
		          locals:
		          (aRBMethodNode temporaries collect: #name as: Array)
		          body: OrderedCollection new.
	compiler definingMethod: method.
	compiler inScope: method do: [ 
		aRBMethodNode statements do: [ :statement | 
			method addStatement: (self visit: statement) ] ].
	^ method
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitReturnNode: aRBReturnNode

	^ ASReturn expression: (self visit: aRBReturnNode value)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitSelfNode: aRBVariableNode

	^ ASSelf method: compiler definingMethod.

! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitSuperNode: aRBVariableNode

		^ ASSelf method: compiler definingMethod superclass: compiler definingClass superclass 
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitTemporaryVariableNode: aRBVariableNode

	^ ASRef variable: (ASLocal name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:00:28'!
compiler: anASPharoCompiler
	compiler := anASPharoCompiler
! !

!ASPharoVisitor class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:00:28'!
compiler: anASPharoCompiler
	^ self new compiler: anASPharoCompiler
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
symbolRef: aSymbol
	^ '_symbol.',((Symbols includes: aSymbol) ifTrue: [ aSymbol ] ifFalse: [ 'foo' ])asZigName
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visit: anASTNode
	^ anASTNode acceptVisitor: self
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitAll: aCollection
	aCollection  do: [ :node | self visit: node ]
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitLiteral: anASLiteral
	anASLiteral literal printOn: stream
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitMethodNode: anASMethodNode

	stream << 'fn ' << anASMethodNode selector asZigName
	<< '(thread : *Thread, self: Object) MethodReturns {'.
	self visitAll: anASMethodNode body.
	stream << '}'
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitReturn: anASReturn
	self visit: anASReturn expression.
	self flag: #todo.
	stream << 'return MethodReturns.Normal'
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitSelfNode: anASSelf
	stream << 'thread.push(thread.stack()[0])'
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitSend: anASSend
	self visit: anASSend target.
	self visitAll: anASSend args.
	stream << 'call(&thread,thread.stack()[0],'<< (self symbolRef: anASSend selector) <<');'
! !

!ASZigGenerator methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:16:40'!
compiler: anASPharoCompiler
	compiler := anASPharoCompiler
! !

!ASZigGenerator methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:16:40'!
stream: aWriteStream
	stream := aWriteStream
! !

!ASZigGenerator class methodsFor: 'class initialization' stamp: 'KenD 11/29/2022 15:16:40'!
initialize
	Symbols := Set withAll: #(valueWithArguments: cull: cull:cull: cull:cull:cull: cull:cull:cull:cull: value value: value:value: value:value:value: value:value:value:value: self Object BlockClosure False True UndefinedObject SmallInteger Symbol Character Float Array String Class Metaclass Behavior Method Magnitude Number System Return Send Literal Load Store SymbolTable Dispatch yourself == ~~ ~= = + - * size ClassTable)
! !

!ASTThreadFormat methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:44'!
cr
	^ stream cr
! !

!ASTThreadFormat methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:44'!
nextPut: aCharacter
	^ stream nextPut: aCharacter
! !

!ASTThreadFormat methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:44'!
nextPutAll: aString
	^ stream nextPutAll: aString
! !

!ASTThreadFormat methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:44'!
printTempOffset: aSymbol
	stream nextPutAll: (method tempMap at: aSymbol) asString
! !

!ASTThreadFormat methodsFor: 'tests' stamp: 'KenD 11/29/2022 15:15:44'!
loop

	| x |
	x := 1000000000.
	[ (x := x - 1) > 0 ] whileTrue: [ 
		x even
			ifTrue: [ x * 2 + 3 ]
			ifFalse: [ x * 3 + 1 ] ]
! !

!ASTThreadFormat methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:15:44'!
temporaryNames
	| x |
	x := 42.
	^ x<0 ifTrue: [ 0 ] ifFalse: [ x ]
! !

!ASTThreadFormat methodsFor: 'printing/formatting' stamp: 'KenD 11/29/2022 15:15:44'!
ir: anIrMethod

	| prevBranchLabel |
	stream := WriteStream with: ''.
	method := anIrMethod asAST.
	method primitive ifNotNil: [ :primitive | 
		stream
			nextPutAll: '&p.p';
			nextPutAll: primitive asString;
			nextPutAll: ',Code.int(-1),';
			cr ].
	method needsContext ifTrue: [ 
		stream
			nextPutAll: '&p.pushContext,"^",';
			cr ].
	prevBranchLabel := nil.
	method allSequencesDo: [ :irSequence | 
		prevBranchLabel == irSequence ifFalse: [ 
			prevBranchLabel threadFormatOn: stream.
			stream cr ].
		stream
			nextPutAll: '"label';
			nextPutAll: irSequence orderNumber asString;
			nextPutAll: ':",';
			cr.
		irSequence sequence do: [ :irInstruction | 
			prevBranchLabel := irInstruction threadFormatOn: self.
			stream cr ] ].
	prevBranchLabel threadFormatOn: stream.
	^ String streamContents: [ :s | 
		  s
			  nextPutAll: 'const prog = compileTuple(sym.';
			  nextPutAll: method selector;
			  nextPut: $,;
			  nextPutAll: method numArgs asString;
			  nextPut: $,;
			  nextPutAll: method tempMap size asString;
			  nextPutAll: ',.{';
			  cr;
			  nextPutAll: stream contents;
			  cr;
			  nextPutAll: '};';
			  cr ]
! !

!ASToken methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:15:57'!
symbol
	^ value asSymbol
! !

!ASToken methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:15:57'!
value
	^ value
! !

!ASToken methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:15:57'!
value: aString
	value := aString.

! !

!ASToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:15:57'!
classSelector: anASCompiler args: aCollection selector: selector
	^ selector asSymbol
! !

!ASToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:15:57'!
defs: anASCompiler scope: anASMethodNode

! !

!ASToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:15:57'!
expectEnd
	self error: 'Unexpected token: ',self asString
! !

!ASToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:15:57'!
processKeyword: anASCompiler target: anASLiteral
	^ nil
! !

!ASToken methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:15:57'!
atEnd
	^ false
! !

!ASToken methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:15:57'!
isLiteral
	^ false
! !

!ASToken methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:15:57'!
= other
	^ self class = other class and: [value = other value]
! !

!ASToken methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:57'!
printOn: s
	s << $< << value asString << $>

! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
assignExpression: anASCompiler
	^ self keywordExpression: anASCompiler
! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
binaryExpression: anASCompiler

	anASCompiler nextToken.
	^ anASCompiler peek
		  binaryExpression: anASCompiler
		  target: (self parseWith: anASCompiler)
! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
keywordExpression: anASCompiler

	anASCompiler nextToken.
	^ anASCompiler peek
		  keywordExpression: anASCompiler
		  target: (self parseWith: anASCompiler)
! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
parseWith: anASCompiler

! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
unaryExpression: anASCompiler

	anASCompiler nextToken.
	^ anASCompiler peek
		  unaryExpression: anASCompiler
		  target: (self parseWith: anASCompiler)
! !

!ASIdentifier methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:25:52'!
possibleAssign: anASCompiler target: target
	self keywordExpression: anASCompiler target: target
! !

!ASIdentifier methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:25:52'!
unaryExpression: anASCompiler target: target
	^ target
! !

!ASIdentifier methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:25:52'!
value: aString
	value := aString asSymbol
! !

!ASIdentifier class methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:25:52'!
with: aString
	| specials alphas colons last size |
	specials := alphas := colons := size :=0.
	last := $..
	aString do: [ : c |
		c isSpecial ifTrue: [ specials := specials + 1 ].
		(c isLetter or: [ c=$_ or: [c isDigit and: [alphas > 0]]]) ifTrue: [ alphas := alphas + 1 ].
		last := c.
		size := size + 1
	].
	specials = size ifTrue: [ ^ ASBinaryId new value: aString asSymbol ].
	alphas = size ifTrue: [ ^ ASUnaryId new value: aString asSymbol ].
	(last = $: and: [ alphas + 1 = size ]) ifTrue: [ ^ ASKeywordId new value: aString asSymbol ].
	^ ASImproperId new value: aString
! !

!ASSpecial methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:22:31'!
isSpecial
	^ true
! !

!ASString methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:19:45'!
arity
	| last |
	last := value last.
	last tokenish ifFalse: [ ^ 2 ].
	(value includes: $:) ifFalse: [ ^ 1 ].
	last = $: ifFalse: [ ^ 0 ].
	^ 1+(value count: [: c | c=$:])
! !

!ASSyntax class methodsFor: 'class initialization' stamp: 'KenD 11/29/2022 15:17:42'!
initialize
	classMap := {
			$^ -> ASReturnToken .
			$: -> ASColonToken .
			$. -> ASSeparatorToken .
			$[ -> ASBlockStartToken .
			$] -> ASBlockEndToken .
			${ -> ASArrayBuildToken .
			$} -> ASArrayEndToken .
			$( -> ASOpenParenToken .
			$) -> ASCloseParenToken .
			'#(' -> ASLiteralListToken .
			$| -> ASBarToken .
			'|' -> ASBarToken .
			$; -> ASCascadeToken .
			':=' -> ASAssignmentToken .
			':>' -> ASParrotToken .
		} asDictionary
! !

!ASSyntax class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:17:42'!
with: aCharacterOrString
	^ (classMap at: aCharacterOrString ifAbsent: [^ self error: 'invalid character sequence: ',aCharacterOrString ]) new value: aCharacterOrString
! !

!ASReturnToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:23:37'!
statement: anASCompiler
	anASCompiler nextToken. " consume the ^ "
	^ ASReturn new expression: (anASCompiler peek assignExpression: anASCompiler)

! !

!ASTBlock methodsFor: 'initializing' stamp: 'KenD 11/29/2022 15:17:28'!
from: anIRSequence
	blockNumber := anIRSequence orderNumber.
	sequence := anIRSequence sequence collect: [: node| node asAST ]
! !

!ASGenerator methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:25:23'!
address
	^ address
! !

!ASGenerator methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:25:23'!
address: anInteger extra: anInteger3 header: anObject fields: anObject1
	address := anInteger.
	extra := anInteger3.
	header := anObject.
	fields := anObject1.
	^ 1 + (extra ifNil: [ 0 ] ifNotNil: [ 1 ]) + fields size
! !

!ASGenerator methodsFor: 'process' stamp: 'KenD 11/29/2022 15:25:23'!
processOn: anASImage
	fields do: [: value |
		value astObject: anASImage
	]
! !

!ASGenerator methodsFor: 'writing' stamp: 'KenD 11/29/2022 15:25:23'!
writeFieldsOn: anASImage
	header writeRawOn: anASImage.
	extra ifNotNil: [ extra writeRawOn: anASImage ].
	fields do: [: value |
		(value astImageObject: anASImage) writeRawOn: anASImage
	].

! !

!ASGenerator methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:25:23'!
on: anASImage object: anObject
	anASImage include: self object: anObject
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASIdentifier
	(#('true' 'false' 'nil' 'thisContext') includes: self) ifTrue: [ ^ self asASSpecial ].
	(#('self' 'super') includes: self) ifTrue: [ ^ self asASSelf ].
	'|' = self ifTrue: [ ^ self asASSyntax ].
	^ ASIdentifier with: self asString
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASLiteral
	^ ASLiteralToken new value: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASSelf
	^ ASSelfToken new value: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASSpecial
	^ ASSpecial new value: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASString
	^ ASString new value: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASSymbol
	^ ASSymbol new value: self asSymbol
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASSyntax
	^ ASSyntax with: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
astFields
	| nVars fields |
	nVars := self class instSize.
	fields := Array new: nVars.
	1 to: nVars do: [ :i | fields at: i put: (self instVarAt: i) ].

! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
astFormat
	^ 1
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
astImageObject: anASImage
	^ anASImage literal: (anASImage generalObject: self) address >> 3 class: 0
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
astObject: anASImage
	^ anASImage generalObject: self
! !

!Boolean methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:35'!
astImageObject: anASImage
	^ anASImage literal: self asBit*2+3 class: 2+self asBit
! !

!Boolean methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:35'!
astObject: anASImage
	^ self
! !

!Float methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:14:24'!
astImageObject: anASImage
	^ ('16r',self hex) asNumber
! !

!Float methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:14:24'!
astObject: anASImage
	^ self
! !

!Integer methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:11'!
writeRaw16On: aWriteStream
	aWriteStream nextPutAll: ((16r10000 + self) asByteArray reversed first: 2)
! !

!Integer methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:11'!
writeRaw32On: aWriteStream
	aWriteStream nextPutAll: ((16r100000000 + self) asByteArray reversed first: 4)
! !

!Integer methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:11'!
writeRawOn: aWriteStream
	aWriteStream nextPutAll: ((16r10000000000000000 + self) asByteArray reversed first: 8)
! !

!SmallInteger methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:08:47'!
astImageObject: anASImage
	^ anASImage literal: self class: 5
! !

!SmallInteger methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:08:47'!
astObject: anASImage
	^ self
! !

!UndefinedObject methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:19'!
astImageObject: anASImage
	^ anASImage literal: 7 class: 4
! !

!UndefinedObject methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:19'!
astObject: anASImage
	^ self
! !

!UndefinedObject methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:19'!
threadFormatOn: threadPrinter

	
! !

!Behavior methodsFor: '*ASTSmalltalk-Tests' stamp: 'KenD 11/29/2022 15:12:09'!
<= aClass
	^ self name <= aClass name
! !

!Class methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:36'!
astFields
	^ { name asSymbol . methodDict values . superclass . Array new . 1 . classPool keys . sharedPools }
! !

!Metaclass methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:43'!
astFields
	^ { thisClass . methodDict values . superclass }
! !

!Character methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:11:03'!
astImageObject: anASImage
	^ anASImage literal: self asInteger class: 7
! !

!Character methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:11:03'!
astObject: anASImage
	^ self
! !

!String methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:07'!
asZigName
	(self allSatisfy: #isAlphaNumeric) ifTrue: [ ^ self asString ].
	^ '@"',self,'"' 
! !

!ByteString methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:48'!
writeRawOn: aWriteStream
	aWriteStream nextPutAll: self asByteArray.

! !

!ArrayedCollection methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:10'!
astFields
	^ self
! !

!ArrayedCollection methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:10'!
astFormat
	^ self subclassResponsibility
! !

!Array methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:24'!
astFormat
	^ 8
! !

!Array methodsFor: '*ASTSmalltalk-Tests' stamp: 'KenD 11/29/2022 15:11:29'!
doP1
	Smalltalk garbageCollect.
	^ (([ self do: [: arg | arg p1 ] ] timeToRun asNanoSeconds * 100) + (self size//2)) // self size
! !

!ByteArray methodsFor: '*ASTSmalltalk-Tests' stamp: 'KenD 11/29/2022 15:12:28'!
at64: anInteger
	| result |
	result := 0.
	8 to: 1 by: -1 do: [: i |
		result := (result << 8)+(self at: anInteger + i)
	].
	^ result
! !

!CompiledMethod methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:47'!
asAST
	^ ASTIrMethod new from: self
! !

!CompiledMethod methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:47'!
astFields
	self halt.
	^ {  }
! !

!CompiledMethod methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:47'!
inspectionThread

	<inspectorPresentationOrder: 50 title: 'Thread'>
	^ self ir inspectionThread
! !

!Set methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:08:18'!
addIfNotPresent: anObject andDo: aBlock
	"Include anObject as one of the receiver's elements and then value aBlock, but only if there
	is no such element already. Anwser anObject."

	| index |
	index := self scanFor: anObject.
	(array at: index) 
		ifNil: [self atNewIndex: index put: anObject asCollectionElement. aBlock value ].
	^ anObject

! !
ASCompiler initialize!
ASZigGenerator initialize!
ASSyntax initialize!
