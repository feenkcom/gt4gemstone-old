tests - arguments
testExecutableBlockStringWithNoArguments
	
	self assert: ([ 1 + 2 ] gtGsAsExecutableStringWithArguments: nil) equals: '[ 1 + 2 ] value'.
	self assert: ([ 1 + 2 ] gtGsAsExecutableStringWithArguments: #()) equals: '[ 1 + 2 ] value'.
