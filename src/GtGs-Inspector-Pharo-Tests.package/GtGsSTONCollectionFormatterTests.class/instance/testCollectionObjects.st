tests
testCollectionObjects
	| collectionFormatter |
	
	collectionFormatter := self buildCollectionFormatterFor: '{ Array new . Bag new. Set new }'.
	self assertCollection: collectionFormatter elements equals: { Array new . Bag new. Set new }