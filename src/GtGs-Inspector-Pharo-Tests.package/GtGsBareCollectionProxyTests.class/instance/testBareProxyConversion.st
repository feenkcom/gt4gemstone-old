tests
testBareProxyConversion
	| bareProxy collectionProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: '{4 . 1 . 3 . 2}' ofType: GtGsBareProxy.
	
	collectionProxy := bareProxy gtGsBareAsCollectionProxy.
	self assert: bareProxy class equals: GtGsBareProxy.
	self assert: collectionProxy class equals: GtGsBareCollectionProxy.