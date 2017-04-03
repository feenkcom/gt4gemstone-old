tests
testObjectCollection
	| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '{ Object new . Object new }'.
	self assertCollection: collectionFormatter elements equals: {'anObject' . 'anObject'}
	