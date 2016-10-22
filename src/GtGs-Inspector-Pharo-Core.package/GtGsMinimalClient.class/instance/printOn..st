printing
printOn: aStream

	aStream 
		nextPutAll: self sessionDescription name;
		nextPutAll: ' [';
		nextPutAll: self session identityHash asString;
		nextPutAll: ']'