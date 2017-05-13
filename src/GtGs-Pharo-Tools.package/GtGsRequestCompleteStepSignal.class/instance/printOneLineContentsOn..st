printing
printOneLineContentsOn: aStream
	super printOneLineContentsOn: aStream.
	aStream 
		nextPutAll: ' - ';
		nextPutAll: self resposeSizeDetails.", ' in ', self durationDetails"
		
	aStream 
		nextPutAll: ' - ';
		nextPutAll: (self responseObject asString truncateWithElipsisTo: 100)