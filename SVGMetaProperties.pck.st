'From Cuis 5.0 [latest update: #4935] on 22 October 2021 at 10:16:17 am'!
'Description I implement construction lenses and MetaProperties for SVG Morphs.'!
!provides: 'SVGMetaProperties' 1 0!
!requires: 'Morph-MetaProperties' 1 92 nil!
!requires: 'SVG' 1 14 nil!
!requires: 'Morphic-Misc1' 1 193 nil!
SystemOrganization addCategory: 'SVGMetaProperties'!


!classDefinition: #SVGLensMorph category: 'SVGMetaProperties'!
DropTargetMorph subclass: #SVGLensMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SVGMetaProperties'!
!classDefinition: 'SVGLensMorph class' category: 'SVGMetaProperties'!
SVGLensMorph class
	instanceVariableNames: ''!


!SVGLensMorph commentStamp: '<historical>' prior: 0!
Together with MetaProperties, I allow for interaction with SVG Morphs.!
