private
buildDisplayNodeAt: anIndex
	| currentNode |
	
	currentNode := self buildDisplayNodeFor: (displayObjects at: anIndex) atIndex: anIndex.
	"self computeAndUpdateChildNodesFor: currentNode."
	^ currentNode