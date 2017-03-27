tests
testLocalFormattingIntegers
		| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '(1 to: 100) asArray'.
	
	collectionFormatter localFormat: [ :each | each asInteger ].
	self assertCollection: collectionFormatter elements  equals: (1 to: 100) asArray.