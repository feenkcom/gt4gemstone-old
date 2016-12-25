callbacks
computeDiffToIncludeElementsBetween: aStartIndex and: aStopIndex
	| loadingStrategy |
	
	loadingStrategy := self loadingStrategyClass new
		computeDiffToIncludeElementsBetween: aStartIndex 
		and: aStopIndex
		withIterator: displayObjects gtGsInspectorElementsIterator 
		forPresentation: self.
	loadingStrategy applyToCacheFromPresentation: self.
	
	^ self topezServer objectSerializer toString: loadingStrategy