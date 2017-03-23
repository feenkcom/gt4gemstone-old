utils
buildDiffToIncludeElementsIn: aGsPresentation between: aStartIndex and: aStopIndex 
	| loadingStrategy |
	
	loadingStrategy := aGsPresentation 
		executeRemotely: #computeDiffToIncludeElementsBetween:and: 
		withArguments: {aStartIndex. aStopIndex}.

	^ loadingStrategy