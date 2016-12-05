private
buildDisplayNodeAt: anIndex
	| currentNode |
	
	currentNode := self buildDisplayNodeFor: (displayObjects at: anIndex).
	self computeAndUpdateChildNodesFor: currentNode.
	^ currentNode