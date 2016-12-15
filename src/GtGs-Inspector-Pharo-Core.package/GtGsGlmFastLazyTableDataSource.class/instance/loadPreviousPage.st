actions
loadPreviousPage
	| diffStartIndex diffEndIndex |

	diffStartIndex := 1 max: (self startIndex - self amountToIncrement).
	diffEndIndex := self startIndex - 1.
	self ensureLoadingOfElementsBetween: diffStartIndex and: diffEndIndex.
	startIndex := diffStartIndex.
	
	self table moveShowIndexTo: (self table container calculateStartIndexWhenShowing: {  }) + self amountToIncrement.