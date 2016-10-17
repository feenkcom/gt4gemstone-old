updating
updateUninitializedBlocks
	super updateUninitializedBlocks.
	
	formatBlock ifNil: [ formatBlock := [ :anObject | anObject gtGsInspectorName ] ]