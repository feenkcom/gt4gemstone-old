tests - arguments
testArrayWithPrimitivesAsStringArgument
	
	self 
		assert: { 1 . nil. '43' } gtGsBareAsBlockStringArgument 
		equals: ' { 1 . nil . ''43'' .  } '.
