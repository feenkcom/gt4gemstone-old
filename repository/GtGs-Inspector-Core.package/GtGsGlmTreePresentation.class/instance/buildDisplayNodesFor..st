private
buildDisplayNodesFor: currentObjects 
	| displayNodes |
	
	displayNodes := OrderedCollection new: (currentObjects size).
	currentObjects do: [ :anObject | |currentNode|
		currentNode := self buildDisplayNodeFor: anObject.
		currentNode
			childNodes: (self computeChildrenFor: currentNode).
		displayNodes add: currentNode ].
	^ displayNodes