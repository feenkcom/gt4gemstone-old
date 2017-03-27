tests - arguments
testBlockClosureAsStringArgument
	
	self 
		assert: [ 1 + 1 ] gtGsBareAsBlockStringArgument 
		equals: 'nil'.
	self 
		assert: [ 1 +
 1 ] gtGsBareAsBlockStringArgument 
		equals: 'nil'.
