tests - arguments
testBareProxyAsStringArgument
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	
	self 
		assert: bareProxy gtGsBareAsBlockStringArgument 
		equals: '(Object _objectForOop: ', bareProxy selfOop asString, ')'.
		
	self 
		assert: bareProxy selfOopType gtGsBareAsBlockStringArgument 
		equals: '(Object _objectForOop: ', bareProxy selfOop asString, ')'.
