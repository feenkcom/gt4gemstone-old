actions
jumpToFirstPage
	| diffStartIndex diffEndIndex |

	diffStartIndex := 1.
	diffEndIndex := self numberOfLoadedElements - 1.
	self ensureLoadingOfElementsBetween: diffStartIndex and: diffEndIndex.
	startIndex := diffStartIndex.
	stopIndex := diffEndIndex.
	
	self table selectedRowIndex > 0 
		ifTrue: [ self table selectRowIndex: 1 ]
		ifFalse: [ self table moveShowIndexTo: 1  ]