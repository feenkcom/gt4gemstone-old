printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: '(', self sessionName, ' [', self sessionHash asString, '])'