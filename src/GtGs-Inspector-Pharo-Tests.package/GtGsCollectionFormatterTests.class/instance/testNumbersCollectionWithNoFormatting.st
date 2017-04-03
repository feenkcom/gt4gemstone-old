tests
testNumbersCollectionWithNoFormatting
	| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '(1 to: 100) asArray'.
	self assertCollection: collectionFormatter elements  equals: (self elementsFrom: (1 to: 100) asArray)
	