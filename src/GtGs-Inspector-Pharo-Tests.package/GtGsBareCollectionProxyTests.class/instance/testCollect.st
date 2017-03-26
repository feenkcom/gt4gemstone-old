tests - messages
testCollect
	| collectionProxy resultProxy |
	
	collectionProxy := self client buildRemoteBareProxyFrom: '{1 . 2 . 3 . 4}' ofType: GtGsBareCollectionProxy.
	
	resultProxy := collectionProxy collect: [ :each | each * 10 ].
	self assert: resultProxy class equals: GtGsBareCollectionProxy.
	self assert: resultProxy remoteClass name equals: 'Array'.
	self assertRemoteCollection: resultProxy equals: #(10 20 30 40).