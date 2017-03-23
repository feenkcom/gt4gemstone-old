private
buildDisplayNodesFrom: startIndex to: endIndex
	| displayNodes |
	
	displayNodes := OrderedCollection new: (endIndex - startIndex + 1 + 1).
	(self iteratorFor: displayObjects)
		forElementsFrom: startIndex 
		to: endIndex 
		withIndexDo: [ :anObject :anIndex | | newValueNode |
			newValueNode := self buildDisplayNodeFor: anObject atIndex: anIndex.
			displayNodes add: newValueNode ].
	^ displayNodes