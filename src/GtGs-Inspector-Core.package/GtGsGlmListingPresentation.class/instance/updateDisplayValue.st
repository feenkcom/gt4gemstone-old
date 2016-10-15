updating
updateDisplayValue
	| currentObjects |
	currentObjects := self displayBlock value.
	self 
		cacheAt: #'displayValue' 
		put: (self buildDisplayNodesFor: currentObjects)