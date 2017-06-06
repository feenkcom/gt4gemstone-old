actions
emitForClient: aGemstoneClient 
	^ self new 
		initializeForClient: aGemstoneClient;
		emit