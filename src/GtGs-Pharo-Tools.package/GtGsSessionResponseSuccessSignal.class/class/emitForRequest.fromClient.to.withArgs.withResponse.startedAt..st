as yet unclassified
emitForRequest: aSelector fromClient: aGemstoneClient to: receiverOopType withArgs: anArray withResponse: anObject startedAt: startTime
	^ self new 
		initializeForClient: aGemstoneClient;
		selector: aSelector;
		receiverOopType: receiverOopType;
		arguments: anArray;
		responseObject: anObject;
		startTime: startTime;
		emit