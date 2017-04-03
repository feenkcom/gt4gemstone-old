tests
testBareProxyDoesNotUnderstandGenericObjectArgument
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic new'.
	
	bareProxy x: Object new.
	self assert: bareProxy x equals: nil.
	
	bareProxy x: Object.
	self assert: bareProxy x equals: nil.
	
	bareProxy y: Morph new.
	self assert: bareProxy y equals: nil.
	
	
