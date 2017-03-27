tests
testStringCollectionWithNoFormatting
	| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '(1 to: 100) asArray collect: [ :each | each asString ]'.
	self assertCollection: collectionFormatter elements equals: (self elementsFrom: ((1 to: 100) asArray collect: [ :each | each asString ]))
	