as yet unclassified
printDetailedDescriptionOn: aStream

	aStream 
		nextPutAll: self sessionDescription name;
		nextPutAll: ' [';
		nextPutAll: self sessionDescription userId;
		nextPutAll: ' - '.
		
	self startTime printHMSOn: aStream.
	self startTime printYMDOn: aStream withLeadingSpace: true.
	
	aStream
		nextPutAll: ']';
		nextPutAll: ' [';
		nextPutAll: self session identityHash asString;
		nextPutAll: ']'