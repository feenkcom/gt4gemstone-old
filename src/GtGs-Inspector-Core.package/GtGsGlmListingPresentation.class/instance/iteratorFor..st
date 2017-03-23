private
iteratorFor: aCollection
	| iterator | 
	
	iterator := self iteratorBlock 
		ifNil: [ aCollection gtGsInspectorElementsIterator ]
		ifNotNil: [ :anIteratorBlock | anIteratorBlock value ].
	^ iterator targetCollection: aCollection 