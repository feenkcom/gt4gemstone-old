tests
testCollectionProxyConversion
	| collectionProxy1 collectionProxy2 |
	
	collectionProxy1 := self client buildRemoteBareProxyFrom: '{1 . 2 . 3 . 4}' ofType: GtGsBareCollectionProxy.
	
	collectionProxy2 := collectionProxy1 gtGsBareAsCollectionProxy.
	self assert: collectionProxy1 == collectionProxy2