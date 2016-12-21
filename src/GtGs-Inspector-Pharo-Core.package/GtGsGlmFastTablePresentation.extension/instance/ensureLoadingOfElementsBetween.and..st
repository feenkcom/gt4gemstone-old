*GtGs-Inspector-Pharo-Core
ensureLoadingOfElementsBetween: aStartIndex and: aStopIndex
	| cachedDisplayValue loadingStrategy |

	cachedDisplayValue := self cacheAt: #displayValue.
	loadingStrategy := self 
		executeRemotely: #computeDiffToIncludeElementsBetween:and: 
		withArguments: {aStartIndex. aStopIndex}.

	loadingStrategy applyToCache: cachedDisplayValue