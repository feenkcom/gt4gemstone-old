tests
testClassNamesFormatting
	| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '{ Object new . Bag new. Set new }'.
	
	collectionFormatter 
		remoteFormat: [ :each | each class name ].
	self assertCollection: collectionFormatter elements equals: { 'Object' . 'Bag' . 'Set' }.
	
	collectionFormatter 
		remoteFormat: [ :each | each class name ];
		localFormat: [ :each | each asSymbol ].
	self assertCollection: collectionFormatter elements equals: { #Object . #Bag . #Set }
	