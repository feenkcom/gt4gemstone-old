private
buildDisplayNodesFor: currentObjects 
	| displayNodes |
	
	displayNodes := OrderedCollection new: (currentObjects size).
	currentObjects do: [ :anObject | |currentNode|
		currentNode := self buildDisplayNodeFor: anObject.
		"self computeAndUpdateChildNodesFor: currentNode."
		displayNodes add: currentNode ].
	^ displayNodes