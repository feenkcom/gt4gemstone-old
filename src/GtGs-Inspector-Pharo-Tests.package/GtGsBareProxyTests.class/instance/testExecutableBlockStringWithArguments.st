tests - arguments
testExecutableBlockStringWithArguments
	
	self 
		assert: ([ :a : b | a + b ] gtGsAsExecutableStringWithArguments: { 40 . 2}) 
		equals: '[ :a :b | a + b ] valueWithArguments:  { 40 . 2 .  } '.
