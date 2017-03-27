tests
testMultipleConsecutiveFormattingIntegers
		| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '(1 to: 100) asArray'.
	
	collectionFormatter 
		remoteFormat: [ :each | (each * 100) asString ];
		localFormat: [ :each | each asInteger ].
	self assertCollection: collectionFormatter elements  equals: ((1 to: 100) asArray collect: [:each |  each * 100 ]).
	
	collectionFormatter 
		remoteFormat: [ :each | (each + 2) asString ];
		localFormat: [ :each | each asInteger ].
	self assertCollection: collectionFormatter elements  equals: ((1 to: 100) asArray collect: [:each |  each + 2 ]).