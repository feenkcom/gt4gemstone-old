private
buildDisplayNodeFor: anObject atIndex: anIndex
 	| displayNode |
	
	displayNode := super buildDisplayNodeFor: anObject atIndex: anIndex.
	self columns do: [ :aGsColumn |
		displayNode columnValues add: (
			aGsColumn computationBlock cull: displayNode targetObject cull: anIndex) ].
	^ displayNode
	