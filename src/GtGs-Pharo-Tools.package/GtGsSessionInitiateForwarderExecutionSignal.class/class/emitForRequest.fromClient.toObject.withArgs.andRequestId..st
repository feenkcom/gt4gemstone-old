as yet unclassified
emitForRequest: aSelector fromClient: aGemstoneClient toObject: receiverObject withArgs: anArray andRequestId: anUUID
	^ self new 
		initializeForClient: aGemstoneClient;
		selector: aSelector;
		receiverObject: receiverObject;
		arguments: anArray;
		requestID: anUUID;
		emit