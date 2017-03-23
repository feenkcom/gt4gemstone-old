*GtGs-Inspector-Pharo-Core
ensureLoadingOfElementAt: anIndex
	| cachedDisplayValue loadingStrategy |

	cachedDisplayValue := self cacheAt: #displayValue.
	loadingStrategy := self 
		executeRemotely: #computeDiffToIncludeElementAt: 
		withArguments: {anIndex}.

	loadingStrategy applyToCache: cachedDisplayValue