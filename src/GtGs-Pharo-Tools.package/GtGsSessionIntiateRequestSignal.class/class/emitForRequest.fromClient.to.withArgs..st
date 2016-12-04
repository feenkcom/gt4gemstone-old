as yet unclassified
emitForRequest: aSelector fromClient: aGemstoneClient to: receiverOopType withArgs: anArray
	^ self new 
		initializeForClient: aGemstoneClient;
		selector: aSelector;
		receiverOopType: receiverOopType;
		arguments: anArray;
		emit