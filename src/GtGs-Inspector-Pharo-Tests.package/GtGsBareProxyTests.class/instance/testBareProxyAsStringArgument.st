tests - arguments
testBareProxyAsStringArgument
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	
	self 
		assert: bareProxy gtGsAsBlockStringArgument 
		equals: '(Object _objectForOop: ', bareProxy selfOop asString, ')'.
		
	self 
		assert: bareProxy selfOopType gtGsAsBlockStringArgument 
		equals: '(Object _objectForOop: ', bareProxy selfOop asString, ')'.
