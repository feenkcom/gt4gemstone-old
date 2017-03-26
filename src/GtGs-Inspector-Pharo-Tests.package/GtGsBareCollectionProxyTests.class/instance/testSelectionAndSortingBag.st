tests - messages
testSelectionAndSortingBag
	| collectionProxy resultProxy |
	
	collectionProxy := self client buildRemoteBareProxyFrom: 'Bag withAll: {4 . 1 . 3 . 2}' ofType: GtGsBareCollectionProxy.
	
	resultProxy := collectionProxy select: [ :each | each even ].
	self assert: resultProxy class equals: GtGsBareCollectionProxy.
	self assert: resultProxy remoteClass name equals: 'Bag'.
	self assertRemoteCollection: (resultProxy asArray gtGsBareAsCollectionProxy sorted: [ :a :b  | a  < b ]) equals: #(2 4).
	
	resultProxy := collectionProxy select: [ :each | each odd ].
	self assert: resultProxy class equals: GtGsBareCollectionProxy.
	self assert: resultProxy remoteClass name equals: 'Bag'.
	self assertRemoteCollection: (resultProxy asArray gtGsBareAsCollectionProxy sorted: [ :a :b  | a  < b ]) equals: #(1 3).