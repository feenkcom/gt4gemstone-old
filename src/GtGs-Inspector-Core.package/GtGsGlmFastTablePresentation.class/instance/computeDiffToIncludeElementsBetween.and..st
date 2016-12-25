callbacks
computeDiffToIncludeElementsBetween: aStartIndex and: aStopIndex
	| loadingStrategy |
	
	loadingStrategy := self loadingStrategyClass new
		computeDiffToIncludeElementsBetween: aStartIndex 
		and: aStopIndex
		withIterator: displayObjects gtGsInspectorElementsIterator 
		forPresentation: self.
	loadingStrategy applyToCacheToPresentation: self.
	
	^ self topezServer objectSerializer toString: loadingStrategy