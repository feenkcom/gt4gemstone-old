as yet unclassified
computeDiffToIncludeElementAt: anIndex
	| startIndex newNodes |
	
	startIndex := currentIndex + 1.
	[ currentIndex < anIndex ] whileTrue: [ 
		currentIndex := currentIndex + self amountToIncrement ].
	newNodes := self buildDisplayNodesFrom: startIndex to: currentIndex.
	(self cacheAt: #displayValue) addAll: newNodes.
	
	^ self topezServer objectSerializer toString: newNodes