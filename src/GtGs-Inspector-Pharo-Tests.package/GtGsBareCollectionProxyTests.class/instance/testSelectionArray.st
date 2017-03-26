tests - messages
testSelectionArray
	| collectionProxy resultProxy |
	
	collectionProxy := self client buildRemoteBareProxyFrom: '{1 . 2 . 3 . 4}' ofType: GtGsBareCollectionProxy.
	
	resultProxy := collectionProxy select: [ :each | each even ].
	self assert: resultProxy class equals: GtGsBareCollectionProxy.
	self assert: resultProxy remoteClass name equals: 'Array'.
	self assertRemoteCollection: resultProxy equals: #(2 4).
	
	resultProxy := collectionProxy select: [ :each | each odd ].
	self assert: resultProxy class equals: GtGsBareCollectionProxy.
	self assert: resultProxy remoteClass name equals: 'Array'.
	self assertRemoteCollection: resultProxy equals: #(1 3).