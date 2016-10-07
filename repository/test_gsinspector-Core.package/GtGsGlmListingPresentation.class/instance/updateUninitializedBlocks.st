initialization
updateUninitializedBlocks
	super updateUninitializedBlocks.
	
	formatBlock ifNil: [ formatBlock := [ :anObject | anObject inspectorName ] ].
	oopComputationBlock ifNil: [ oopComputationBlock := [ :anObject | anObject asOop ] ].
	iconIdBlock ifNil: [ iconIdBlock := [ :anObject |  nil ] ]