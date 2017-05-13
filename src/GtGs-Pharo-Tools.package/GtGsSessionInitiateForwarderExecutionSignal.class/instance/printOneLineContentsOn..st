as yet unclassified
printOneLineContentsOn: aStream
	super printOneLineContentsOn: aStream.
	aStream 
		nextPutAll: ' - ';
		nextPutAll: self selector;
		nextPutAll: ' ';
		nextPutAll: (self arguments asCommaString truncateWithElipsisTo: 100)