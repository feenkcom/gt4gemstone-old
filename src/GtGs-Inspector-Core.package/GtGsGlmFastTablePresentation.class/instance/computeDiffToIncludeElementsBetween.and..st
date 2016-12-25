callbacks
computeDiffToIncludeElementsBetween: aStartIndex and: aStopIndex
	| loadingStrategy |
	
	loadingStrategy := self loadingStrategyClass new
		computeDiffToIncludeElementsBetween: aStartIndex 
		and: aStopIndex
		withIterator: displayObjects gtgsInspectorElementsIterator 
		forPresentation: self.
	loadingStrategy applyToCacheToPresentation: self.
	
	^ self topezServer objectSerializer toString: loadingStrategy