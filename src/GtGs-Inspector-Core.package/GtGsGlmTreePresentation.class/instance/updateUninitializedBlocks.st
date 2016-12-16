updating
updateUninitializedBlocks
	super updateUninitializedBlocks.
	
	childrenBlock ifNil: [childrenBlock := [ :anObject | #() ]].
	"Reset the #formatBlock if there are columns as the inspector will only use those values."
	self columns size > 0 ifTrue: [ formatBlock := nil ].