'From Cuis 4.2 of 25 July 2013 [latest update: #2621] on 3 December 2015 at 1:26:41.016702 pm'!
'Description Sprites are lively media with instance specific appearance and behaviors'!
!provides: 'Morphic-Sprite' 1 3!
!requires: 'Cuis-Base' 42 2621 nil!
!classDefinition: #Sprite category: #'Morphic-Sprite'!
Object subclass: #Sprite
	instanceVariableNames: 'wardrobe repertoire Jukebux memberships env locale costume'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Sprite'!
!classDefinition: 'Sprite class' category: #'Morphic-Sprite'!
Sprite class
	instanceVariableNames: ''!


!Sprite commentStamp: '<historical>' prior: 0!
A Sprite is an active entity.

Ivars:
  wardrobe: a collection of Morphs uses as Costumes
  repertoire: a collection of Behaviors -- how a Sprite behaves
  jukebox: a collection of Sounds
  memberships: a collection of Collectives a Sprite belongs to
  env: a dictionary used to remember and share
  locale: the location/stage/arena where a Sprite acts out its behaviors
  costume: one of the wardrobe Morphs which is currently worn to display a Sprite 

  
  !

!Sprite class methodsFor: 'documentation' stamp: 'KenD 12/3/2015 13:25'!
whyMe
	^
'A Sprite is an active entity which can change its Costume, which is a Morph.

A Sprite''s Behavior may be different based on its Locale (e.g. a swimming 
pool vs a room in a building).  

A Sprite reacts to events through its Costume, so changing behaviors updates
the property list and action-list of the Morph which is the current Costume.

Changing costumes does not (in itself) change behaviors.  All costumes of a 
Sprite are said to share behavior.

A Sprite may also share  information/behaviors via Collectives.  A Collective
of Sprites has a shared environment.  Collectives are used to start/stop stepping
or otherwise broadcast messages to a collection of Sprites.
'! !
