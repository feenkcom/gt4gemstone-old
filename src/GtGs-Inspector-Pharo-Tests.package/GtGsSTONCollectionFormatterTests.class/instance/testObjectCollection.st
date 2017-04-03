tests
testObjectCollection
	| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '{ Object new . Object new }'.
	self 
		assertCollection: (collectionFormatter elements collect: [ :anObject | anObject class ]) 
		equals: { Object . Object }