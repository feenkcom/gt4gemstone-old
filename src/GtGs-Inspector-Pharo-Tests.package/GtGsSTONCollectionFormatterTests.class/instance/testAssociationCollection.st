tests
testAssociationCollection
	| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '{ 1 -> 2 . ''a'' -> ''b'' . ''c'' -> #c }'.
	self 
		assertCollection: collectionFormatter elements 
		equals: { 1 -> 2 . 'a' -> 'b' . 'c' -> #c }.
	
	collectionFormatter 
		remoteFormat: [ :assoc | assoc value ].
	self 
		assertCollection: collectionFormatter elements 
		equals: { 2 . 'b' . #c }.
		
	collectionFormatter 
		localFormat: [ :assoc | assoc value ].
	self 
		assertCollection: collectionFormatter elements 
		equals: { 2 . 'b' . #c }.
	