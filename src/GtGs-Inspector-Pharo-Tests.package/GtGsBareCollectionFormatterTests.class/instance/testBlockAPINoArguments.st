tests
testBlockAPINoArguments
	| collectionFormatter |
	
	collectionFormatter := [ (1 to: 100) asArray ] gtGsBareAsCollectionFormatterOn:  self client.
	self assertCollection: collectionFormatter elements equals: (self elementsFrom: (1 to: 100) asArray)