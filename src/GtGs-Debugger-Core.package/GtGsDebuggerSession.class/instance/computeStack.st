callbacks
computeStack
	self stack updateCacheIn: self.
	^ self topezServer objectSerializer toString: self stack