callbacks
computeDisplayValue
	self updateDisplayValueCache.
	^ self serializer toString: (self cacheAt: #'displayValue')