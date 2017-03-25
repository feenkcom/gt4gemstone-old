tests
testBareProxyInitialization
	| bareProxy proxyOop|
	
	bareProxy := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic newTestInstanceWithX: 1 y: 2 z: 3 w: 4'.
	proxyOop := self client executeString: 'GtGsTestObjectBasic testInstance asOop'.
	
	self assert: bareProxy gemstoneClient equals: self client.
	self assert: bareProxy selfOop        equals: proxyOop.
	self assert: bareProxy selfOopType    equals: (self client session asOopType: proxyOop)
	