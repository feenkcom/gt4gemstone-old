tests
testBlockAPIWithArguments
	| collectionFormatter |
	
	collectionFormatter := [ :a :b | (a to: b) asArray ] 
		gtGsBareAsCollectionFormatterOn: self client
		withArguments: {1 . 100}.
	self assertCollection: collectionFormatter elements equals: (self elementsFrom: (1 to: 100) asArray)