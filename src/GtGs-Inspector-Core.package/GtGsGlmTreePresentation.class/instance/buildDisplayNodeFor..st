as yet unclassified
buildDisplayNodeFor: anObject
	| displayNode |
	
	displayNode := super buildDisplayNodeFor: anObject.
	self hasChildNodesBlock ifNotNil: [ :aBlock |
		displayNode hasChildNodes: (aBlock value: anObject) ].
	
	self columns do: [ :aGsColumn |
		displayNode columnValues add: (
			aGsColumn computationBlock value: displayNode targetObject) ].

	^ displayNode