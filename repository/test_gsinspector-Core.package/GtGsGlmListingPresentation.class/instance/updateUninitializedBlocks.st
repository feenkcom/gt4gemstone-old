initialization
updateUninitializedBlocks
	super updateUninitializedBlocks.
	
	formatBlock := [ :anObject | anObject inspectorName ].
	oopComputationBlock := [ :anObject | anObject asOop ].
	iconIdBlock := [ :anObject |  nil ]