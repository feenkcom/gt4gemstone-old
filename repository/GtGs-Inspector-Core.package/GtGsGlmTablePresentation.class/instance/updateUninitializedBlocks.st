updating
updateUninitializedBlocks
	super updateUninitializedBlocks.
	
	childrenBlock ifNil: [childrenBlock := [ :anObject | #() ]]