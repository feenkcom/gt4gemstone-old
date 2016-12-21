instance creation
forClient: aGsClient andNotification: gsNotification in: aClientProcess

	^ self new 	
		initializeClientSessionForProcess: aClientProcess;
		initializeForGemstoneClient: aGsClient andNotification: gsNotification;
		yourself