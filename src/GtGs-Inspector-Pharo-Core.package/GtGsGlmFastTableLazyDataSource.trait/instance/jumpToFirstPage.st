actions
jumpToFirstPage
	| diffStartIndex diffEndIndex |

	diffStartIndex := 1.
	diffEndIndex := self numberOfLoadedElements - 1.
	self ensureLoadingOfElementsBetween: diffStartIndex and: diffEndIndex.
	self updateStartIndexTo: diffStartIndex.
	self updateStopIndexTo: diffEndIndex.
	
	self table selectedRowIndex > 0 
		ifTrue: [ self table selectRowIndex: 1 ]
		ifFalse: [ self table moveShowIndexTo: 1  ]