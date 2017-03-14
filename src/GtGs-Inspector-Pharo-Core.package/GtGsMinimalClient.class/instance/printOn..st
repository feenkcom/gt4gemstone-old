printing
printOn: aStream

	aStream 
		nextPutAll: self sessionDescription name;
		nextPutAll: ' [';
		nextPutAll: self sessionId asString;
		nextPutAll: ']'