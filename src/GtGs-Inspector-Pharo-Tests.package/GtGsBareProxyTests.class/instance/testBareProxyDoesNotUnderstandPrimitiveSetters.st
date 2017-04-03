tests
testBareProxyDoesNotUnderstandPrimitiveSetters
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic 
		newTestInstanceWithX: #Object y: 2 z: ''test'' w: 4'.
	
	bareProxy x: #String.
	self assert: bareProxy x equals: #String.
	self assert: (self client executeString: 'GtGsTestObjectBasic testInstance x = #String').
	
	bareProxy y: 2.
	self assert: bareProxy y equals: 2.
	self assert: (self client executeString: 'GtGsTestObjectBasic testInstance y = 2').
	
	bareProxy z: 'test'.
	self assert: bareProxy z equals: 'test'.
	self assert: (self client executeString: 'GtGsTestObjectBasic testInstance z = ''test''')
	