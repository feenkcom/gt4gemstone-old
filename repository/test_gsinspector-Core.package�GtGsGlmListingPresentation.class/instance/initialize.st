initialization
initialize
	super initialize.
	
	formatBlock := [ :anObject | anObject inspectorName ].
	oopComputationBlock := [ :anObject | anObject asOop ].
	iconIdBlock := [ :anObject |  nil ]