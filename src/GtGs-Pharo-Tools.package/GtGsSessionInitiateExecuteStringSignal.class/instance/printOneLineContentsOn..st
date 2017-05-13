printing
printOneLineContentsOn: aStream
	super printOneLineContentsOn: aStream.
	aStream 
		nextPutAll: ' - ';
		nextPutAll: (self stringArgument truncateWithElipsisTo: 100)