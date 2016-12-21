callbacks
computeDiffToIncludeElementsBetween: aStartIndex and: aStopIndex
	| cachedDisplayValue loadingStrategy |
	
	cachedDisplayValue := self cacheAt: #displayValue.
	
	loadingStrategy := self loadingStrategyClass new
		computeDiffToIncludeElementsBetween: aStartIndex 
		and: aStopIndex
		inCache: cachedDisplayValue 
		forPresentation: self.
	loadingStrategy applyToCache: cachedDisplayValue.
	
	^ self topezServer objectSerializer toString: loadingStrategy