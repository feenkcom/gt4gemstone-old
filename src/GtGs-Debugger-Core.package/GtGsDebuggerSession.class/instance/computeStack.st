callbacks
computeStack
	self stack updateCache.
	^ self topezServer objectSerializer toString: self stack 