as yet unclassified
loadNextPage
	| diffStartIndex diffEndIndex test2 |
	    
	diffStartIndex := self stopIndex + 1.
	diffEndIndex := self totalNumberOfRows min: (self stopIndex + self amountToIncrement).
	self ensureLoadingOfElementsBetween: diffStartIndex and: diffEndIndex.
	stopIndex := diffEndIndex.
	
	self tableRefresh.
	self table moveShowIndexTo: (self table container calculateStartIndexWhenShowing: {  }).