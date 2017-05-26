actions
emitForClient: aGemstoneClient errSType: anErrorType andNotification: aRemoteNotification
	^ self new
		initializeForClient: aGemstoneClient;
		errorType: anErrorType;
		remoteNotification: aRemoteNotification;
		emit
		