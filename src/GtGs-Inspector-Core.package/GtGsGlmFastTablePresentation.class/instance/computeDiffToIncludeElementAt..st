callbacks
computeDiffToIncludeElementAt: anIndex
	| loadingStrategy |
	
	loadingStrategy := self loadingStrategyClass new
		computeDiffToIncludeElementAt: anIndex 
		withIterator: displayObjects gtGsInspectorElementsIterator 
		forPresentation: self.
	loadingStrategy applyToCacheFromPresentation: self.
	
	^ self topezServer objectSerializer toString: loadingStrategy