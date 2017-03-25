tests
testBareProxyDoesNotUnderstandChainedSends
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'GtGsTestObjectBasic 
		newTestInstanceWithX: (
			GtGsTestObjectBasic newWithX: (#key -> String) y: 2 z: 3 w: 4) y: nil z: nil w: nil'.
	
	self assert: bareProxy x x value superclass superclass name equals: #SequenceableCollection
	