tests
testSymbolsCollectionWithNoFormatting
	| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '{#a . #b . #c}'.
	self assertCollection: collectionFormatter elements equals: (self elementsFrom: {#a . #b . #c})
	