updating
updateDisplayValueCache
	| currentObjects |
	currentObjects := displayObjects 
		ifNil: [ self displayBlock value ] ifNotNil: [ displayObjects ].
	self 
		cacheAt: #'displayValue' 
		put: (self buildDisplayValueFor: currentObjects)