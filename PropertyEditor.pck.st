'From Cuis 4.2 of 25 July 2013 [latest update: #2404] on 16 July 2015 at 3:10:45.356619 pm'!
'Description Editor for Morph Properties'!
!provides: 'PropertyEditor' 1 29!
!requires: 'Morphic-ColorEditor' 1 16 nil!
!requires: 'Morphic-Misc1' 1 49 nil!
!classDefinition: #PropertyEditor category: #PropertyEditor!
MenuMorph subclass: #PropertyEditor
	instanceVariableNames: 'morph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyEditor class' category: #PropertyEditor!
PropertyEditor class
	instanceVariableNames: ''!

!classDefinition: #PropertyMorph category: #PropertyEditor!
MenuItemMorph subclass: #PropertyMorph
	instanceVariableNames: 'metaProperty morph name value'
	classVariableNames: 'BlankIcon BoolIcon CharIcon ChronIcon ClassIcon ClosureIcon CollectIcon CpxIcon FalseIcon FileIcon FloatIcon FolderIcon FontIcon FracIcon IntIcon NilIcon ObjIcon OneOfIcon PtIcon RngIcon StrIcon StreamIcon SymIcon TrueIcon WindowIcon'
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyMorph class' category: #PropertyEditor!
PropertyMorph class
	instanceVariableNames: ''!

!classDefinition: #PropertyMeta category: #PropertyEditor!
Object subclass: #PropertyMeta
	instanceVariableNames: 'kind editorClass dropAcceptor'
	classVariableNames: 'DefaultPropDescription'
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyMeta class' category: #PropertyEditor!
PropertyMeta class
	instanceVariableNames: ''!

!classDefinition: #ClosurePropertyMeta category: #PropertyEditor!
PropertyMeta subclass: #ClosurePropertyMeta
	instanceVariableNames: 'numberOfArguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'ClosurePropertyMeta class' category: #PropertyEditor!
ClosurePropertyMeta class
	instanceVariableNames: ''!

!classDefinition: #OneOfPropertyMeta category: #PropertyEditor!
PropertyMeta subclass: #OneOfPropertyMeta
	instanceVariableNames: 'collectionToSelectFrom'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'OneOfPropertyMeta class' category: #PropertyEditor!
OneOfPropertyMeta class
	instanceVariableNames: ''!

!classDefinition: #RangePropertyMeta category: #PropertyEditor!
PropertyMeta subclass: #RangePropertyMeta
	instanceVariableNames: 'minValue maxValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'RangePropertyMeta class' category: #PropertyEditor!
RangePropertyMeta class
	instanceVariableNames: ''!

!classDefinition: #PropertyMetaTests category: #PropertyEditor!
TestCase subclass: #PropertyMetaTests
	instanceVariableNames: 'morph1 morph2 objPropMeta charPropMeta colorPropMeta stringPropMeta rangePropMeta oneOfPropMeta closurePropMeta passValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyMetaTests class' category: #PropertyEditor!
PropertyMetaTests class
	instanceVariableNames: ''!


!PropertyEditor commentStamp: '<historical>' prior: 0!
I am used to edit a Morph's properties.!

!PropertyMorph commentStamp: '<historical>' prior: 0!
I display a selection for a Morph property.

ivars:
  metaProperty -- a PropertyMeta
  name -- property name (a symbol)
  value -- cached property value (used for undo)
!

!PropertyMeta commentStamp: '<historical>' prior: 0!
I am metaData for a Morph Property.  

I am frequently shared, so my ivars are immutable (not meant to be changed).

ivars:
  kind -- a Class; prop value must be aKindOf: self kind
  editorClass -- class of editor to be used in editing the property
  dropAcceptor -- when a Morph is dropped on a property displayed in a PropertyEditor, this does any transform required for the value to be placed in the property.  E.g. a prop holding a Color may take a color swatch, color name, ...
!

!ClosurePropertyMeta commentStamp: '<historical>' prior: 0!
My kind is BlockClosure.

I add the constraint that the number of arguments for the closure must be numberOfArguments!

!OneOfPropertyMeta commentStamp: '<historical>' prior: 0!
My property values are constrained to be one member of the contained collection.

Note that Kind may also be constrained.!

!RangePropertyMeta commentStamp: '<historical>' prior: 0!
Ranges are constrained to be >= minValue and <= maxValue.

Note that kind may be constrained as well.!

!PropertyMetaTests commentStamp: '<historical>' prior: 0!
Unit tests for PropertyEditor support.!

!ProtoObject methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:30'!
icon

	^ PropertyMorph blankIcon ! !

!Object methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:49'!
icon

	^ PropertyMorph objectIcon ! !

!AbstractFont methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:06'!
icon

	^ PropertyMorph fontIcon ! !

!Class methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:02'!
icon

	^ PropertyMorph classIcon ! !

!BlockClosure methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:00'!
icon

	^ PropertyMorph closureIcon ! !

!Boolean methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:50'!
icon

	^ PropertyMorph booleanIcon ! !

!False methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:50'!
icon

	^ PropertyMorph falseIcon ! !

!True methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:51'!
icon

	^ PropertyMorph trueIcon ! !

!Collection methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:13'!
icon

	^ PropertyMorph collectionIcon ! !

!String methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:53'!
icon

	^ PropertyMorph stringIcon ! !

!Symbol methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:54'!
icon

	^ PropertyMorph symbolIcon ! !

!Interval methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:09'!
icon

	^ PropertyMorph rangeIcon ! !

!Complex methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:05'!
icon

	^ PropertyMorph complexIcon ! !

!Editor methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:56'!
icon

	^ PropertyMorph windowIcon ! !

!FileDirectory methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:10'!
icon

	^ PropertyMorph folderIcon ! !

!Magnitude methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:03'!
icon

	^ PropertyMorph integerIcon ! !

!Character methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:53'!
icon

	^ PropertyMorph charIcon ! !

!Float methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:05'!
icon

	^ PropertyMorph floatIcon ! !

!Fraction methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:04'!
icon

	^ PropertyMorph fractionIcon ! !

!Integer methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:04'!
icon

	^ PropertyMorph integerIcon ! !

!Time methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:00'!
icon

	^ PropertyMorph chronIcon ! !

!Timespan methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:01'!
icon

	^ PropertyMorph chronIcon ! !

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/13/2015 16:47'!
icon
	
	^ (self imageForm: 32)
		 ifNotNil: [ :form | form magnifyTo: 16 @ 16 ]
		 ifNil: [ Theme current morphsIcon ]! !

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/11/2015 10:46'!
metaProperties
	"Answer a Dictionary of propName->PropertyDecsription"
	
	^ self valueOfProperty: #'metaProperties' 
		ifAbsent: [ | newDict |
			newDict := IdentityDictionary new.
			self setProperty: #'metaProperties' toValue: newDict.
			newDict 
		]! !

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/13/2015 15:53'!
propertiesDict

	^ properties! !

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 18:14'!
setMetaProperty: propSym toValue: aPropertyMeta

	| propVal |
	propVal := self valueOfProperty: propSym 
				ifAbsent: [ nil ].

	(aPropertyMeta accepts: propVal)
		  ifFalse: [ self error: 'Property value does not conform to specification' ].
	
	self metaProperties at: propSym put: aPropertyMeta 
	! !

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 15:56'!
valueOfMetaProperty: propSym

	^ self metaProperties at: propSym ifAbsent: [ PropertyMeta default ]
	! !

!ImagePallet methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:58'!
icon

	^ PropertyMorph windowIcon ! !

!Point methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:07'!
icon

	^ PropertyMorph pointIcon ! !

!Stream methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 21:55'!
icon

	^ PropertyMorph stringIcon ! !

!FileStream methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 22:12'!
icon

	^ PropertyMorph fileIcon ! !

!UndefinedObject methodsFor: '*propertyeditor' stamp: 'KenD 7/13/2015 14:38'!
icon

	^ PropertyMorph blankIcon ! !

!PropertyEditor methodsFor: 'dropping/grabbing' stamp: 'KenD 7/16/2015 14:32'!
aboutToGrab: aMorph
	"submorph is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."

	^ (aMorph isKindOf: PropertyMorph)
		ifTrue: [ SignMorph forObject: aMorph propertyValue ] 
		ifFalse: [ self ] "Title selected. User wants to move me. Pick me up"! !

!PropertyEditor methodsFor: 'initialization' stamp: 'KenD 7/16/2015 14:27'!
addTitle: aString

	titleMorph := WindowTitleMorph title: aString  buttonsNamed: #( close collapse showHalo ).
	titleMorph color: Theme current menuTitleBar.
	self addMorphFront: titleMorph.
	! !

!PropertyEditor methodsFor: 'dropping/grabbing' stamp: 'KenD 7/16/2015 07:37'!
allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. Redefined to answer true."

	^ true! !

!PropertyEditor methodsFor: 'events' stamp: 'KenD 7/14/2015 21:19'!
closeButtonClicked
	"The user clicked on the close-box control in the window title.  For Mac users only, the Mac convention of option-click-on-close-box is obeyed if the mac option key is down."

	Preferences dismissAllOnOptionClose ifTrue:
		[Sensor rawMacOptionKeyPressed ifTrue:
			[^ self world closeUnchangedWindows]].
	self delete  "closeBox overrides stayUp"! !

!PropertyEditor methodsFor: 'events' stamp: 'KenD 7/14/2015 21:20'!
collapseButtonClicked
	
	self collapse
! !

!PropertyEditor methodsFor: 'events' stamp: 'KenD 7/13/2015 16:19'!
edit: propName

	(HoverHelpMorph contents: 'Need editor for ' , propName asString)
		popUpForHand: self targetMorph world activeHand! !

!PropertyEditor methodsFor: 'initialization' stamp: 'KenD 7/16/2015 14:29'!
forMorph: aMorph

	morph := aMorph.
	self defaultTarget: self.
	self addTitle: (aMorph printStringLimitedTo: 60).
	self stayUp: true.

	"add operations"
	"@@@<NYI>@@@"

	self addLine.
	
	"add properties"
	self propertyNames do: [ :name | | propMorph |
		propMorph := 
			PropertyMorph 
					propName: name 
					morph: aMorph 
					propMeta: (aMorph valueOfMetaProperty: name).
		propMorph  target: self;
					selector: #edit: ;
					arguments: { name. }.
		self addMorphBack: propMorph
	].

	self addLine.
	
	"add ivars"
	"@@@<NYI>@@@"
	
	self titleMorph morphExtent: (self morphExtent x) @ (Preferences windowTitleFont height).
	self adjustSubmorphsLayout.
	self titleMorph reset;
		yourself! !

!PropertyEditor methodsFor: 'accessing' stamp: 'KenD 7/13/2015 18:39'!
propertyNames
	"Answer an alpha-sorted collection of property names less #metaProperties"

	| propNames |
	propNames := SortedCollection sortBlock: [ :sym1 :sym2 | sym1 < sym2 ].
	
	self targetMorph propertiesDict keysDo: [ :propName | 
		(propName = #metaProperties)
			ifFalse: [ propNames add: propName ] 
	].

	^ propNames ! !

!PropertyEditor methodsFor: 'events' stamp: 'KenD 7/16/2015 12:37'!
showHaloButtonClicked
	"Show my targetMorph's halo"
	| aMorph |
	aMorph := self targetMorph.
	aMorph isInWorld ifTrue: [aMorph addHalo ]! !

!PropertyEditor methodsFor: 'accessing' stamp: 'KenD 7/13/2015 16:19'!
targetMorph

	^ morph! !

!PropertyEditor methodsFor: 'accessing' stamp: 'KenD 7/14/2015 21:28'!
titleMorph

	^ titleMorph ! !

!PropertyEditor class methodsFor: 'example' stamp: 'KenD 7/16/2015 12:42'!
example1
"
	self example1.
"
	| aMorph passValue |
	
	aMorph := EllipseMorph initializedInstance.
	
	aMorph setProperty: #object toValue: nil.
	aMorph setProperty: #float toValue: 2.3.
	aMorph setProperty: #range toValue: 5.
	aMorph setProperty: #string toValue: 'Silly little string'.
	aMorph setProperty: #char toValue: $c.
	aMorph setProperty: #color toValue: Color red.
	aMorph setProperty: #bool toValue: true.
	aMorph setProperty: #oneOf toValue: #three. "#(one two three four five)"
	aMorph setProperty: #symbol toValue: #'MySymbol'.
	aMorph setProperty: #alwaysTrue toValue: [ :ignored | true ].
	
	passValue := [ :whatever |   "Just pass value through"
		(whatever isKindOf: SignMorph) 
			ifTrue: [ whatever object ] ifFalse: [ whatever ] 
	]. 

	aMorph setMetaProperty: #float 
			toValue:  (RangePropertyMeta 
						kind: Number editor: nil 
						dropAcceptor: passValue
						minValue: 2 maxValue: 15.7). 
	aMorph setMetaProperty: #string 
			toValue: (PropertyMeta kind: String editor: nil dropAcceptor: passValue).
	aMorph setMetaProperty: #char 
			toValue: (PropertyMeta kind: Character editor: nil dropAcceptor: passValue).
	aMorph setMetaProperty: #color 
			toValue: (PropertyMeta kind: Color editor: nil dropAcceptor: passValue).
	aMorph setMetaProperty: #bool 
			toValue: (PropertyMeta kind: Boolean editor: nil dropAcceptor: passValue).
	aMorph setMetaProperty: #oneOf 
			toValue: (OneOfPropertyMeta
						kind: Symbol editor: nil 
						dropAcceptor: passValue
						selections: #(one two three four five)).
	aMorph setMetaProperty: #range 
			toValue: (RangePropertyMeta 
								kind: Number editor: nil 
								dropAcceptor: passValue 
								minValue: 2 maxValue: 15.7).
	
	(self forMorph: aMorph) openInWorld.

! !

!PropertyEditor class methodsFor: 'instance creation' stamp: 'KenD 7/13/2015 16:01'!
forMorph: aMorph

	^ self new forMorph: aMorph ! !

!PropertyMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 7/16/2015 13:30'!
aboutToBeGrabbedBy: aHand
	"The receiver is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."

	^ SignMorph forObject: self propertyValue  "Grab my property value"! !

!PropertyMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 7/16/2015 09:59'!
allowsMorphDrop
	"Answer whether we accept dropping morphs. Redefined to answer true."

	^ true! !

!PropertyMorph methodsFor: 'testing' stamp: 'KenD 7/16/2015 10:21'!
allowsValue: aValue

	^ self metaProperty accepts: aValue! !

!PropertyMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 7/16/2015 14:54'!
cleanUpForMorph: aMorph.

	aMorph delete.! !

!PropertyMorph methodsFor: 'editing' stamp: 'KenD 7/12/2015 08:12'!
edit

	self notYetImplemented ! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/16/2015 10:21'!
metaProperty

	^ metaProperty! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/16/2015 10:24'!
name

	^ name! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/16/2015 10:24'!
originalValue

	^ value! !

!PropertyMorph methodsFor: 'initialization' stamp: 'KenD 7/16/2015 10:17'!
propName: aSymbol morph: aMorph propMeta: aPropertyDescriptor

	super initialize.
	name := aSymbol.
	morph := aMorph.
	metaProperty := aPropertyDescriptor.
	value := aMorph valueOfProperty: aSymbol.	
	self setContents;
		 target: self;
		 icon: value icon; 
		 selector: #edit

	
	! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/12/2015 08:18'!
propertyDescriptor

	^ metaProperty ! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/12/2015 08:18'!
propertyName

	^ name ! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/16/2015 10:30'!
propertyValue

	^ self targetMorph valueOfProperty: self name! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/16/2015 13:27'!
propertyValue: newValue
	"Assumed checking already done.  Does NOT change cashed value"
	
	self targetMorph setProperty: self name toValue: newValue.
	self setContents.
	self owner ifNotNil: [ self owner adjustSubmorphsLayout ].
! !

!PropertyMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 7/16/2015 15:08'!
rejectDropMorphEvent: dropEvent
	"The receiver has been rejected.  Disappear"

	self delete
! !

!PropertyMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 7/16/2015 14:59'!
schedulePostRemovalOf: aMorph

	self addAlarm: #cleanUpForMorph: with: aMorph after: 0.1.
! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/16/2015 10:29'!
setContents

	"(re)set my content string"
	self contents: name asString , ':  ', (self propertyValue printStringLimitedTo: 20).
	self icon: (self propertyValue icon)! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/16/2015 10:22'!
targetMorph

	^ morph! !

!PropertyMorph methodsFor: 'editing' stamp: 'KenD 7/12/2015 08:22'!
undo
	"Reset value from remembered value"

	self morph setProperty: self name  toValue: self value! !

!PropertyMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 7/16/2015 15:09'!
wantsDroppedMorph: aMorph event: evt
	"Return true if the receiver wishes to accept the given morph, which is being dropped by a hand in response to the given event. Note that for a successful drop operation both parties need to agree. The symmetric check is done automatically via aMorph wantsToBeDroppedInto: self."

	| dropValue |
	(aMorph isKindOf: SignMorph)
		ifTrue: [ dropValue := aMorph object ]
		ifFalse: [ dropValue := aMorph ].
	(self allowsValue: dropValue)
		ifTrue: [ self propertyValue: dropValue ].
	
	"We can't just delet aMorph as rejecting the drop adds it to tis old owner at 0@0.
	 So we accept the drop, but then delete aMorph."
	self schedulePostRemovalOf: aMorph.  "@@@FIXME: this is ugly!!@@@"
		
	^ true  "Always accept drop -- even if we reject the value, then delete the morph"! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:33'!
blankIcon

	^BlankIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:14'!
booleanIcon

	^BoolIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:33'!
charIcon

	^CharIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:33'!
chronIcon

	^ChronIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:33'!
classIcon

	^ClassIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:34'!
closureIcon

	^ClosureIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:34'!
collectionIcon

	^CollectIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:34'!
complexIcon

	^CpxIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:35'!
falseIcon

	^FalseIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:35'!
fileIcon

	^FileIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:35'!
floatIcon

	^FloatIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:35'!
folderIcon

	^FolderIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:36'!
fontIcon

	^FontIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:36'!
fractionIcon

	^FracIcon! !

!PropertyMorph class methodsFor: 'class initialization' stamp: 'KenD 7/13/2015 11:03'!
initialize
"
	PropertyMorph initialize..
"
	| dirName |
	dirName :=   FmFileIOAccessor default imageDirectoryPath , '../Cuis-Smalltalk-BabySteps/Icons/'.

	BlankIcon := ImageReadWriter formFromFileNamed: dirName , 'Blank.png'.
	BoolIcon := ImageReadWriter formFromFileNamed: dirName , 'Bool.png'.
	CharIcon := ImageReadWriter formFromFileNamed: dirName , 'Char.png'.
	ChronIcon := ImageReadWriter formFromFileNamed: dirName , 'Chron.png'.
	ClassIcon := ImageReadWriter formFromFileNamed: dirName , 'Class.png'.
	ClosureIcon := ImageReadWriter formFromFileNamed: dirName , 'Closure.png'.
	CollectIcon := ImageReadWriter formFromFileNamed: dirName , 'Collect.png'.
	CpxIcon := ImageReadWriter formFromFileNamed: dirName , 'Cpx.png'.
	FalseIcon := ImageReadWriter formFromFileNamed: dirName , 'False.png'.
	FileIcon := ImageReadWriter formFromFileNamed: dirName , 'File.png'.
	FloatIcon := ImageReadWriter formFromFileNamed: dirName , 'Float.png'.
	FolderIcon := ImageReadWriter formFromFileNamed: dirName , 'Folder.png'.
	FontIcon := ImageReadWriter formFromFileNamed: dirName , 'Font.png'.
	FracIcon := ImageReadWriter formFromFileNamed: dirName , 'Frac.png'.
	IntIcon := ImageReadWriter formFromFileNamed: dirName , 'Int.png'.
	NilIcon := ImageReadWriter formFromFileNamed: dirName , 'Nil.png'.
	ObjIcon := ImageReadWriter formFromFileNamed: dirName , 'Obj.png'.
	OneOfIcon := ImageReadWriter formFromFileNamed: dirName , 'OneOf.png'.
	PtIcon := ImageReadWriter formFromFileNamed: dirName , 'Pt.png'.
	RngIcon := ImageReadWriter formFromFileNamed: dirName , 'Rng.png'.
	StrIcon := ImageReadWriter formFromFileNamed: dirName , 'Str.png'.
	StreamIcon := ImageReadWriter formFromFileNamed: dirName , 'Stream.png'.
	SymIcon := ImageReadWriter formFromFileNamed: dirName , 'Sym.png'.
	TrueIcon := ImageReadWriter formFromFileNamed: dirName , 'True.png'.
	WindowIcon := ImageReadWriter formFromFileNamed: dirName , 'Window.png'.
	
! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:36'!
integerIcon

	^IntIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:36'!
nilIcon

	^NilIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:37'!
objectIcon

	^ObjIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:37'!
oneOfIcon

	^OneOfIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:37'!
pointIcon

	^PtIcon! !

!PropertyMorph class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 09:01'!
propName: aSymbol morph: aMorph

	^ self propName: aSymbol morph: aMorph propMeta: PropertyMeta default
! !

!PropertyMorph class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 08:13'!
propName: aSymbol morph: aMorph propMeta: aPropertyDescriptor

	^self new propName: aSymbol morph: aMorph propMeta: aPropertyDescriptor
! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:38'!
rangeIcon

	^RngIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:38'!
streamIcon

	^StreamIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:38'!
stringIcon

	^StrIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:38'!
symbolIcon

	^SymIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:39'!
trueIcon

	^TrueIcon! !

!PropertyMorph class methodsFor: 'accessing' stamp: 'KenD 7/12/2015 21:39'!
windowIcon

	^WindowIcon! !

!PropertyMeta methodsFor: 'comparing' stamp: 'KenD 7/12/2015 16:02'!
= other
	"I am equak to other if I have the same class and ivar values"
	
	^(self class = other class)
		and: [(self kind = other kind)
			and: [(self editorClass = other editorClass)
				and: [self dropAcceptor = other dropAcceptor]
			]
	      ]  
! !

!PropertyMeta methodsFor: 'testing' stamp: 'KenD 7/12/2015 15:57'!
accepts: aValue

	^ aValue isKindOf: self kind! !

!PropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:37'!
dropAcceptor

	^ dropAcceptor! !

!PropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:40'!
editorClass

	^ editorClass! !

!PropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:36'!
kind

	^ kind! !

!PropertyMeta methodsFor: 'initialization' stamp: 'KenD 7/11/2015 14:44'!
kind: aClass editor: aEditClass dropAcceptor: aOneArgClosure

	kind := aClass.
	editorClass := aEditClass.
	dropAcceptor := aOneArgClosure.
! !

!PropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 08:56'!
default

	^ DefaultPropDescription ! !

!PropertyMeta class methodsFor: 'class initialization' stamp: 'KenD 7/12/2015 08:57'!
initialize
"
	PropertyDescription initialize.
"
	"The default accepts any value without change"
	DefaultPropDescription := self kind: Object editor: Inspector dropAcceptor: [ : any | any ].! !

!PropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/11/2015 11:02'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure

	| newInstance |
	newInstance := self basicNew kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	"Reuse old instance if we already have one"
	self allInstancesDo: [ :oldInstance | (oldInstance = newInstance) ifTrue: [ ^ oldInstance ] ].
	^ newInstance ! !

!ClosurePropertyMeta methodsFor: 'comparing' stamp: 'KenD 7/12/2015 16:04'!
= other
	"I am equak to other if I have the same class and ivar values"
	
	^(super = other)
		and: [ self numberOfArguments = other numberOfArguments ]  
! !

!ClosurePropertyMeta methodsFor: 'testing' stamp: 'KenD 7/12/2015 08:49'!
accepts: aValue

	^ (super accepts: aValue) and: [ self numberOfArguments = aValue numArgs ]! !

!ClosurePropertyMeta methodsFor: 'initialization' stamp: 'KenD 7/11/2015 07:47'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure numArguments: numArgs

	super kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	numberOfArguments := numArgs 
! !

!ClosurePropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:41'!
numberOfArguments

	^ numberOfArguments! !

!ClosurePropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 16:51'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure numArguments: anInteger

	| newInstance |
	newInstance := self basicNew kind: aClass editor: editorClass dropAcceptor: aOneArgClosure 
						numArguments: anInteger.
	"Reuse old instance if we already have one"
	self allInstancesDo: [ :oldInstance | (oldInstance = newInstance) ifTrue: [ ^ oldInstance ] ].
	^ newInstance ! !

!OneOfPropertyMeta methodsFor: 'comparing' stamp: 'KenD 7/12/2015 16:03'!
= other
	"I am equak to other if I have the same class and ivar values"
	
	^(super = other)
		and: [ self collectionToSelectFrom = other collectionToSelectFrom ]  
! !

!OneOfPropertyMeta methodsFor: 'testing' stamp: 'KenD 7/12/2015 08:48'!
accepts: aValue

	^ (super accepts: aValue) and: [ self collectionToSelectFrom includes: aValue ]! !

!OneOfPropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:43'!
collectionToSelectFrom

	^ collectionToSelectFrom! !

!OneOfPropertyMeta methodsFor: 'initialization' stamp: 'KenD 7/11/2015 07:46'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure selections: aCollection

	super kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	collectionToSelectFrom := aCollection 
! !

!OneOfPropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 16:50'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure selections: aCollection

	| newInstance |
	newInstance := self basicNew kind: aClass editor: editorClass dropAcceptor: aOneArgClosure 
						selections: aCollection.
	"Reuse old instance if we already have one"
	self allInstancesDo: [ :oldInstance | (oldInstance = newInstance) ifTrue: [ ^ oldInstance ] ].
	^ newInstance ! !

!RangePropertyMeta methodsFor: 'comparing' stamp: 'KenD 7/12/2015 16:06'!
= other
	"I am equak to other if I have the same class and ivar values"
	
	^(super = other)
		and: [ (self maximumValue = other maximumValue)
			and: [ self minimumValue = other minimumValue ]
		]  
! !

!RangePropertyMeta methodsFor: 'testing' stamp: 'KenD 7/12/2015 08:50'!
accepts: aValue

	^ (super accepts: aValue) and: [ (self minimumValue <= aValue) and: [ aValue <= self maximumValue ] ]! !

!RangePropertyMeta methodsFor: 'initialization' stamp: 'KenD 7/11/2015 07:48'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure minValue: low maxValue: high

	super kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	minValue := low.
	maxValue := high
! !

!RangePropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:49'!
maximumValue

	^maxValue ! !

!RangePropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:48'!
minimumValue

	^minValue ! !

!RangePropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 16:49'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure minValue: low maxValue: high

	| newInstance |
	newInstance := self basicNew kind: aClass editor: editorClass dropAcceptor: aOneArgClosure 
						minValue: low maxValue: high.
	"Reuse old instance if we already have one"
	self allInstancesDo: [ :oldInstance | (oldInstance = newInstance) ifTrue: [ ^ oldInstance ] ].
	^ newInstance ! !

!PropertyMetaTests methodsFor: 'initialization' stamp: 'KenD 7/12/2015 16:35'!
setUp
	"Set up class variables before each test"
	
	passValue := [ :whatever |   "Just pass value through"
		(whatever isKindOf: SignMorph) ifTrue: [ whatever object ] ifFalse: [ whatever ] 
	]. 
	
	self setUpMorphs.
	self setUpProperties.
	self setUpMetaProperties.
	
	

	! !

!PropertyMetaTests methodsFor: 'initialization' stamp: 'KenD 7/12/2015 16:33'!
setUpMetaProperties

	objPropMeta := PropertyMeta default.
	charPropMeta := PropertyMeta kind: Character editor: nil dropAcceptor: passValue.
	colorPropMeta  := PropertyMeta kind: Color editor: nil dropAcceptor: passValue.
	stringPropMeta  := PropertyMeta kind: String editor: nil dropAcceptor: passValue.
	rangePropMeta  := RangePropertyMeta kind: Number editor: nil dropAcceptor: passValue 
						minValue: 2 maxValue: 15.7.
	oneOfPropMeta  := OneOfPropertyMeta kind: Symbol editor: nil dropAcceptor: passValue 
						selections: #(one two three four five).
	closurePropMeta := ClosurePropertyMeta kind: BlockClosure editor: nil dropAcceptor: passValue 
						numArguments: 1.
	morph1 setMetaProperty: #object toValue: objPropMeta.
	morph1 setMetaProperty: #float toValue: rangePropMeta.
	morph1 setMetaProperty: #string toValue: stringPropMeta.
	morph1 setMetaProperty: #char toValue: charPropMeta.
	morph1 setMetaProperty: #color toValue: colorPropMeta.
	morph1 setMetaProperty: #bool 
			toValue: (PropertyMeta kind: Boolean editor: nil dropAcceptor: passValue).
	morph1 setMetaProperty: #oneOf toValue: oneOfPropMeta.
	morph1 setMetaProperty: #range 
			toValue: (RangePropertyMeta kind: Number editor: nil dropAcceptor: passValue 
						minValue: 2 maxValue: 15.7).
	morph1 setMetaProperty: #alwaysTrue toValue: closurePropMeta.

	! !

!PropertyMetaTests methodsFor: 'initialization' stamp: 'KenD 7/12/2015 16:54'!
setUpMorphs

	morph1 := EllipseMorph initializedInstance.
	morph2 := BorderedRectMorph initializedInstance.
! !

!PropertyMetaTests methodsFor: 'initialization' stamp: 'KenD 7/12/2015 16:32'!
setUpProperties

	morph1 setProperty: #object toValue: nil.
	morph1 setProperty: #float toValue: 2.3.
	morph1 setProperty: #range toValue: 5.
	morph1 setProperty: #string toValue: 'Silly little string'.
	morph1 setProperty: #char toValue: $c.
	morph1 setProperty: #color toValue: Color red.
	morph1 setProperty: #bool toValue: true.
	morph1 setProperty: #oneOf toValue: #three. "#(one two three four five)"
	morph1 setProperty: #symbol toValue: #'MySymbol'.
	morph1 setProperty: #alwaysTrue toValue: [ :ignored | true ].
! !

!PropertyMetaTests methodsFor: 'testing' stamp: 'KenD 7/12/2015 18:15'!
testAcceptance
	"Are constraints properly tested for?"
	
	self assert: ( 2.3 = (morph1 valueOfProperty: #float) ).
	self assert: ( ( morph1 valueOfMetaProperty: #float ) accepts: 2.3 ).
	self deny: ( ( morph1 valueOfMetaProperty: #float ) accepts: 45 ).
	self deny: ( ( morph1 valueOfMetaProperty: #float ) accepts: 'String' ).
	self assert: ( #three = (morph1 valueOfProperty: #oneOf) ).
	self assert: ( ( morph1 valueOfMetaProperty: #oneOf ) accepts: #two ).
	self assert: ( ( morph1 valueOfMetaProperty: #oneOf ) accepts: #five ).
	self deny: ( ( morph1 valueOfMetaProperty: #oneOf ) accepts: 5 ).
	self deny: ( ( morph1 valueOfMetaProperty: #oneOf ) accepts: 'five' ).
	self assert: ( ( morph1 valueOfMetaProperty: #alwaysTrue ) accepts: [ :ignore | false ] ).
	self deny: ( ( morph1 valueOfMetaProperty: #alwaysTrue ) accepts: [ :one :two | one + two ] ).
	self assert: true.
	self assert: true.
	self assert: true.
	self assert: true.
	self assert: true.
	self assert: true.
	self deny: false.
	self deny: false.
	self deny: false.
	self deny: false.
	self deny: false.
	! !

!PropertyMetaTests methodsFor: 'testing' stamp: 'KenD 7/12/2015 16:45'!
testAccess
	"Can we get there from here?"
	
	self assert: ((morph1 valueOfMetaProperty: #string) == stringPropMeta).
	self assert: ((morph1 valueOfProperty: #string) = 'Silly little string').
	self deny: false.
	! !

!PropertyMetaTests methodsFor: 'testing' stamp: 'KenD 7/12/2015 16:42'!
testComparison
	"Do we compare properly?"
	
	self assert: (colorPropMeta = colorPropMeta).
	self deny: (colorPropMeta = objPropMeta).
	self assert: (colorPropMeta = 
		(PropertyMeta kind: Color editor: nil dropAcceptor: passValue)
	).
	self assert: (oneOfPropMeta = 
		(OneOfPropertyMeta kind: Symbol editor: nil dropAcceptor: passValue 
						selections: #(one two three four five))
	).
	self assert: (rangePropMeta =
		(RangePropertyMeta kind: Number editor: nil dropAcceptor: passValue 
						minValue: 2 maxValue: 15.7)
	).
	self deny: (rangePropMeta = 
		(PropertyMeta kind: Color editor: nil dropAcceptor: passValue)
	).
	self deny: (rangePropMeta = 
		(OneOfPropertyMeta kind: Symbol editor: nil dropAcceptor: passValue 
						selections: #(one two three four five))
	).
	self deny: (oneOfPropMeta =
		(RangePropertyMeta kind: Number editor: nil dropAcceptor: passValue 
						minValue: 2 maxValue: 15.7)
	).! !
PropertyMorph initialize!
PropertyMeta initialize!
