actions
jumpToLastPage
	| diffStartIndex diffEndIndex |

	diffStartIndex := self totalNumberOfRows - self numberOfLoadedElements.
	diffEndIndex := self totalNumberOfRows.
	self ensureLoadingOfElementsBetween: diffStartIndex and: diffEndIndex.
	startIndex := diffStartIndex.
	stopIndex := diffEndIndex.
	
	self table selectedRowIndex > 0 
		ifTrue: [ self table selectRowIndex: self numberOfLoadedElements ]
		ifFalse: [ self table moveShowIndexTo: (1 max: (self numberOfLoadedElements - self table container calculateVisibleRows + 1))  ]