initialization
updateUninitializedBlocks
	super updateUninitializedBlocks.
	
	formatBlock ifNil: [ formatBlock := [ :anObject | anObject inspectorName ] ].
	iconIdBlock ifNil: [ iconIdBlock := [ :anObject |  nil ] ]