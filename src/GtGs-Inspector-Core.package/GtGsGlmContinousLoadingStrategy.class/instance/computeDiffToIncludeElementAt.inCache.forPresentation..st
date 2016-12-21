as yet unclassified
computeDiffToIncludeElementAt: anIndex inCache: cachedDisplayValue forPresentation: aGSPresentation
	| startIndex stopIndex |

	startIndex := cachedDisplayValue size + 1.
	stopIndex := cachedDisplayValue size.
	[ stopIndex < anIndex ] whileTrue: [ 
		stopIndex := stopIndex + aGSPresentation amountToIncrement ].
	
	"The interval of objects that need to be computed and send back to the client"
	startIndex := 1 max: startIndex.
	stopIndex := aGSPresentation numberOfElements min: stopIndex.
	
	diff := aGSPresentation buildDisplayNodesFrom: startIndex to: stopIndex.