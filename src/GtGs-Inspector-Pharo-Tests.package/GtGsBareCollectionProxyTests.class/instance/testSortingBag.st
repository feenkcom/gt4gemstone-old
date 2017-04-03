tests - messages
testSortingBag
	| collectionProxy resultProxy |
	
	collectionProxy := self client buildRemoteBareProxyFrom: 'Bag withAll: {4 . 1 . 3 . 2}' ofType: GtGsBareCollectionProxy.
	
	resultProxy := collectionProxy sorted: [ :a : b | a < b ].
	self assert: resultProxy class equals: GtGsBareCollectionProxy.
	self assert: resultProxy remoteClass name equals: 'Array'.
	self assertRemoteCollection: resultProxy equals: #(1 2 3 4).