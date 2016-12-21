actions
jumpToIndex: anIndex
	| diffStartIndex diffEndIndex |

	diffStartIndex := (anIndex - self amountToIncrement) min: self totalNumberOfRows max: 1.
	diffEndIndex  := self totalNumberOfRows min: (anIndex + self amountToIncrement).
	
	self ensureLoadingOfElementsBetween: diffStartIndex and: diffEndIndex.
	startIndex := diffStartIndex.
	stopIndex := diffEndIndex.
	
	self table selectedRowIndex > 0 
		ifTrue: [ self table selectRowIndex: self amountToIncrement + 1 ]
		ifFalse: [ self table 
				moveShowIndexTo: self amountToIncrement + 1;
				highlightRowIndex: self amountToIncrement + 1  ]