callbacks
computeDisplayNodes
	| currentObjects displayNodes |
	currentObjects := self displayBlock value.
	displayNodes := self buildDisplayNodesFor: currentObjects.
	self cacheAt: #'displayNodes' put: displayNodes.
	^ self serializer toString: displayNodes
	