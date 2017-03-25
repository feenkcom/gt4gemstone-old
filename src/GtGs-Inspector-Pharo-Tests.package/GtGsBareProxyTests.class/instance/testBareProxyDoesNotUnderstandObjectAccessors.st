tests
testBareProxyDoesNotUnderstandObjectAccessors
	| bareProxy resultProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic 
		newTestInstanceWithX: Object y: (GtGsTestObjectBasic newWithX: 1 y: 2 z: 3 w: 4) z: nil w: nil'.
	
	resultProxy := bareProxy x.
	self assert: resultProxy class equals: GtGsBareProxy .
	self assert: resultProxy selfOop equals: (self client executeString: 'GtGsTestObjectBasic testInstance x asOop').
	
	resultProxy := bareProxy y.
	self assert: resultProxy class equals: GtGsBareProxy .
	self assert: resultProxy selfOop equals: (self client executeString: 'GtGsTestObjectBasic testInstance y asOop').
	