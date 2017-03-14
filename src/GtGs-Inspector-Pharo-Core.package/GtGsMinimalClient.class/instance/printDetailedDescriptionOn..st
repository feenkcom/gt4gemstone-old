printing
printDetailedDescriptionOn: aStream

	aStream 
		nextPutAll: self sessionDescription name;
		nextPutAll: ' [';
		nextPutAll: self sessionDescription userId;
		nextPutAll: ' - '.
		
	self printCreationTimeOn: aStream.
	
	aStream
		nextPutAll: ']';
		nextPutAll: ' [';
		nextPutAll: self sessionId asString;
		nextPutAll: ']'