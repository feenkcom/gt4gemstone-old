tests - arguments
testBlockClosureAsStringArgument
	
	self 
		assert: [ 1 + 1 ] gtGsAsBlockStringArgument 
		equals: '[ 1 + 1 ]'.
	self 
		assert: [ 1 +
 1 ] gtGsAsBlockStringArgument 
		equals: '[ 1 + 1 ]'.
