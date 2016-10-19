callbacks
computeDisplayValue
	self updateDisplayValueCache.
	^ self topezServer objectSerializer toString: (self cacheAt: #'displayValue')