initialization
initializeForClient: aGsClient andNotification: aGsNotification
	| gemstoneDebuggerSessionOopType |
	gemstoneClient := aGsClient.
	gemstoneNotification := aGsNotification.
	gemstoneDebuggerSession := self gemstoneClient objectSerializer fromString: (self gemstoneClient session 
		send: #buildDebuggerSessionForException:fromProcess:
		to: self gemstoneClient todeServerOopType
		withArgs: {gemstoneNotification exceptionOopType. gemstoneNotification contextOopType}).
	self logStackToFileIfNeeded.
	gemstoneDebuggerSessionOopType := gemstoneDebuggerSession selfForwarderOop gciResultToGsOopType: self gemstoneClient session.
	self gemstoneClient session registerClientObjectForwarderOopType: gemstoneDebuggerSessionOopType for: self.