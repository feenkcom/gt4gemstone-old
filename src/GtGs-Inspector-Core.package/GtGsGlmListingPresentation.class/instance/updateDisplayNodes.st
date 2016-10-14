updating
updateDisplayNodes
	| currentObjects displayNodes |
	currentObjects := self displayBlock value.
	displayNodes := self buildDisplayNodesFor: currentObjects.
	self cacheAt: #'displayNodes' put: displayNodes.
	