callbacks
computeDisplayValue
	self updateDisplayValue.
	^ self serializer toString: (self cacheAt: #'displayValue')