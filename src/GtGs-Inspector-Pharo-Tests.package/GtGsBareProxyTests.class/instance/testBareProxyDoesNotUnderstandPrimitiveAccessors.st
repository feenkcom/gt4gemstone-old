tests
testBareProxyDoesNotUnderstandPrimitiveAccessors
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic 
		newTestInstanceWithX: #Object y: 2 z: ''test'' w: 4'.
	
	self assert: bareProxy x equals: #Object.
	self assert: bareProxy y equals: 2.
	self assert: bareProxy z equals: 'test'.
	self assert: bareProxy w equals: 4.
	