updating
updateDisplayValueCache
	| currentObjects |
	currentObjects := self displayBlock value.
	self 
		cacheAt: #'displayValue' 
		put: (self buildDisplayValueFor: currentObjects)