tests
testBareProxyDoesNotUnderstandObjectSetters
	| bareProxy parameterProxy obtainedProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic 
		newTestInstanceWithX: Object y: (GtGsTestObjectBasic newWithX: 1 y: 2 z: 3 w: 4) z: nil w: nil'.
	
	parameterProxy := self client buildRemoteBareProxyFrom: 'String'.
	bareProxy x: parameterProxy.
	
	obtainedProxy := bareProxy x.
	self assert: obtainedProxy selfOopType equals: parameterProxy selfOopType.
	self assert: obtainedProxy selfOop equals: parameterProxy selfOop.
	self assert: (self client executeString: 'GtGsTestObjectBasic testInstance x = String').
	
	parameterProxy := self client buildRemoteBareProxyFrom: '
		SessionTemps current at: #GtGs_Cache_Test_Object put: (GtGsTestObjectBasic newWithX: 11 y: 22 z: 33 w: 44)'.
	bareProxy y: parameterProxy.
	
	obtainedProxy := bareProxy y.
	self assert: obtainedProxy selfOopType equals: parameterProxy selfOopType.
	self assert: obtainedProxy selfOop equals: parameterProxy selfOop.
	self assert: (self client executeString: 'GtGsTestObjectBasic testInstance y = (SessionTemps current at: #GtGs_Cache_Test_Object)')