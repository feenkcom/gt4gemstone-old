actions
computeDiffToIncludeElementAt: anIndex withIterator: anIterator forPresentation: aGSPresentation

	self computeDiffToIncludeElementsBetween: anIndex - aGSPresentation amountToIncrement
		and: anIndex + aGSPresentation amountToIncrement
		withIterator:  anIterator
		forPresentation: aGSPresentation
	
