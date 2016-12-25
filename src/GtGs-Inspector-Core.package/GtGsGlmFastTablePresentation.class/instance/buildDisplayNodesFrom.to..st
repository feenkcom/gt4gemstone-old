private
buildDisplayNodesFrom: startIndex to: endIndex
	| displayNodes |
	
	displayNodes := OrderedCollection new: (endIndex - startIndex + 1 + 1).
	displayObjects gtgsInspectorElementsIterator
		forElementsFrom: startIndex 
		to: endIndex 
		withIndexDo: [ :anObject :anIndex | | newValueNode |
			newValueNode := self buildDisplayNodeFor: anObject atIndex: anIndex.
			displayNodes add: newValueNode ].
	^ displayNodes