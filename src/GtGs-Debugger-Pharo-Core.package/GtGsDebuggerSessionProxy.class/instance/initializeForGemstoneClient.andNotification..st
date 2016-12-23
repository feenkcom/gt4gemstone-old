initialization
initializeForGemstoneClient: aGsClient andNotification: aGsNotification
	| gemstoneDebuggerSessionOopType |
	gemstoneClient := aGsClient.
	gemstoneNotification := aGsNotification.
	gemstoneDebuggerSession := self gemstoneClient objectSerializer fromString: (self gemstoneClient 
		send: #buildDebuggerSessionForException:fromProcess:
		to: self gemstoneClient todeServerOopType
		withArgs: {gemstoneNotification gci32xErrSType exceptionObj . gemstoneNotification contextOopType}).
	self logStackToFileIfNeeded.
	gemstoneDebuggerSessionOopType := gemstoneDebuggerSession selfForwarderOop gciResultToGsOopType: self gemstoneClient session.
	self gemstoneClient session registerClientObjectForwarderOopType: gemstoneDebuggerSessionOopType for: self.
	self clientSession ifNotNil: [ :aSession | aSession name: self name ]