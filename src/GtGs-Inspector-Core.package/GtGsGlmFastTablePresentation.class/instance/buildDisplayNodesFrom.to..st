private
buildDisplayNodesFrom: startIndex to: endIndex
	| displayNodes |
	
	displayNodes := OrderedCollection new: (endIndex - startIndex + 1).
	displayObjects from: startIndex to: endIndex do: [ :anObject | |currentNode|
		currentNode := self buildDisplayNodeFor: anObject.
		self computeAndUpdateChildNodesFor: currentNode.
		displayNodes add: currentNode ].
	^ displayNodes