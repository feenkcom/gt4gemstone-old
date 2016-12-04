as yet unclassified
printOneLineContentsOn: aStream
	super printOneLineContentsOn: aStream.
	aStream 
		nextPutAll: ' - ';
		nextPutAll: self resposeSizeDetails, ' in ', self durationDetails