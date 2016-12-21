callbacks
computeDiffToIncludeElementAt: anIndex
	| cachedDisplayValue loadingStrategy |
	
	cachedDisplayValue := self cacheAt: #displayValue.
	
	loadingStrategy := self loadingStrategyClass new
		computeDiffToIncludeElementAt: anIndex 
		inCache: cachedDisplayValue 
		forPresentation: self.
	loadingStrategy applyToCache: cachedDisplayValue.
	
	^ self topezServer objectSerializer toString: loadingStrategy