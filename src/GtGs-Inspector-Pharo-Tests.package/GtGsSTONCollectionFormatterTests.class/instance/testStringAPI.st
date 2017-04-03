tests
testStringAPI
	| collectionFormatter |
	
	collectionFormatter := '(1 to: 100) asArray' gtGsAsCollectionFormatterOn:  self client.
	self assertCollection: collectionFormatter elements equals: (self elementsFrom: (1 to: 100) asArray)