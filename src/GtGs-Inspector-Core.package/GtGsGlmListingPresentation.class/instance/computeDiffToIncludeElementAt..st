callbacks
computeDiffToIncludeElementAt: anIndex
	| loadingStrategy |
	
	loadingStrategy := self loadingStrategyClass new
		computeDiffToIncludeElementAt: anIndex 
		withIterator: (self iteratorFor: displayObjects)
		forPresentation: self.
	loadingStrategy applyToCacheFromPresentation: self.
	
	^ self topezServer objectSerializer toString: loadingStrategy