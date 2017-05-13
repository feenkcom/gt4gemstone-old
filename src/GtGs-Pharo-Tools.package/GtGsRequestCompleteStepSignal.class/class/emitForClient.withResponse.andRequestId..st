actions
emitForClient: aGemstoneClient withResponse: anObject andRequestId: anUUID
	^ self new 
		initializeForClient: aGemstoneClient;
		responseObject: anObject;
		requestID: anUUID;
		emit