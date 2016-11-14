as yet unclassified
forClient: aGsClient andNotification: gsNotification in: aClientProcess

	^ self new 	
		clientProcess: aClientProcess;
		detectUIProcess;
		initializeForClient: aGsClient andNotification: gsNotification