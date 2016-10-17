updating
updateUninitializedBlocks
	super updateUninitializedBlocks.
	
	iconIdBlock ifNil: [ iconIdBlock := [ :anObject |  nil ] ]