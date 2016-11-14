as yet unclassified
initializeForClient: aGsClient andNotification: aGsNotification
	gemstoneClient := aGsClient.
	gemstoneNotification := aGsNotification.
	gemstoneDebuggerSession := self gemstoneClient objectSerializer fromString: (self gemstoneClient session 
		send: #buildDebuggerSessionForException:fromProcess:
		to: self gemstoneClient todeServerOopType
		withArgs: {gemstoneNotification exceptionOopType. gemstoneNotification contextOopType}).