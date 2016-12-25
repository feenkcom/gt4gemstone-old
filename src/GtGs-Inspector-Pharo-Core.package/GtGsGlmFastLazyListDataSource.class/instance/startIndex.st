accessing
startIndex
	^ self rawStartIndex ifNil: [ self updateStartIndexTo: 1 ]