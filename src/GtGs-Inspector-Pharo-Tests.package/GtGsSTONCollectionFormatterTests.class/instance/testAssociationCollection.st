tests
testAssociationCollection
	| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '{ 1 -> 2 . ''a'' -> ''b'' . #c -> 1.2 }'.
	self 
		assertCollection: collectionFormatter elements 
		equals: { 1 -> 2 . 'a' -> 'b' . #c -> 1.2 }.
	
	collectionFormatter 
		remoteFormat: [ :assoc | assoc value ].
	self 
		assertCollection: collectionFormatter elements 
		equals: { 2 . 'b' . 1.2 }.
		
	collectionFormatter 
		localFormat: [ :assoc | assoc value ].
	self 
		assertCollection: collectionFormatter elements 
		equals: { 2 . 'b' . 1.2 }.
	