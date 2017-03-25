tests - arguments
testArrayWithObjectsAsStringArgument
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	
	self 
		assert: { [ 1 + 1 ] . bareProxy } gtGsAsBlockStringArgument 
		equals: ' { [ 1 + 1 ] . (Object _objectForOop: ', bareProxy selfOop asString ,') .  } '.
