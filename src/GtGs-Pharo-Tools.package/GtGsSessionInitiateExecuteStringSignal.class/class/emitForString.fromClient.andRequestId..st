actions
emitForString: aString fromClient: aGemstoneClient andRequestId: anUUID
	^ self new 
		initializeForClient: aGemstoneClient;
		stringArgument: aString;
		requestID: anUUID;
		emit