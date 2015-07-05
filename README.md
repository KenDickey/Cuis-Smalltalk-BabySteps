Cuis-Smalltalk-BabySteps
==========

Random package code under development and proof-of-concept prototypes

Pre-alpha, but feel free to look.

To load a package
````Smalltalk
	Feature require: '<whatever>'
````

Of possible interest is the MorphIt package, which is a start at drag-n-drop behaviors for individual morphs.
````Smalltalk
	Feature require: #'MorphIt'.

	MorphModifierPallet initializedInstance openInWorld morphExtent:  (690 @ 84).
````

Now select a Morph, from the halo's Menu select 'show drop target for me'
Then click+drag from the MorphModifierPallet to the DropTarget.

E.g. drag the Color Cycle icon (tool help will show this) to the drop target; move the DropTarget aside; move the mouse over the original morph.
