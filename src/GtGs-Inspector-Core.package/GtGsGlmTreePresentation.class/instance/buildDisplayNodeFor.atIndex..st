private
buildDisplayNodeFor: anObject atIndex: anIndex
	| displayNode |
	
	displayNode := super buildDisplayNodeFor: anObject atIndex: anIndex.
	self hasChildNodesBlock ifNotNil: [ :aBlock |
		displayNode hasChildNodes: (aBlock value: anObject) ].
	
	self columns do: [ :aGsColumn |
		displayNode columnValues add: (
			aGsColumn computationBlock cull: displayNode targetObject cull: anIndex) ].

	^ displayNode