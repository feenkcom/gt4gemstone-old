updating
updateUninitializedBlocks
	super updateUninitializedBlocks.
	
	formatBlock ifNil: [ formatBlock := [ :anObject | anObject gtGsInspectorName ] ].
	iconIdBlock ifNil: [ iconIdBlock := [ :anObject |  nil ] ]