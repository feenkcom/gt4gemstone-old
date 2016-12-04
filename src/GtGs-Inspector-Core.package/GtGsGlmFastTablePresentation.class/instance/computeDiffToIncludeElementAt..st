as yet unclassified
computeDiffToIncludeElementAt: anIndex
	| previousIndex newNodes |
	
	previousIndex := currentIndex.
	[ currentIndex < anIndex ] whileTrue: [ 
		currentIndex := currentIndex + self amountToIncrement ].
	newNodes := self buildDisplayNodesFrom: 1 to: currentIndex.
	(self cacheAt: #displayValue) addAll: newNodes.
	
	^ self topezServer objectSerializer toString: newNodes