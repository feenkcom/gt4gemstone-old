tests - arguments
testArrayWithObjectsAsStringArgument
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	
	self 
		assert: { 1 . bareProxy } gtGsBareAsBlockStringArgument 
		equals: ' { 1 . (Object _objectForOop: ', bareProxy selfOop asString ,') .  } '.
