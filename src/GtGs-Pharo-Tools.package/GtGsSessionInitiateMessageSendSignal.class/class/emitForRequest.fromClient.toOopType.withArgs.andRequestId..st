actions
emitForRequest: aSelector fromClient: aGemstoneClient toOopType: receiverOopType withArgs: anArray andRequestId: anUUID
	^ self new 
		initializeForClient: aGemstoneClient;
		selector: aSelector;
		receiverOopType: receiverOopType;
		arguments: anArray;
		requestID: anUUID;
		emit