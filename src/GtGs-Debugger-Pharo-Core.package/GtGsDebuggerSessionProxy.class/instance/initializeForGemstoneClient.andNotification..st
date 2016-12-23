initialization
initializeForGemstoneClient: aGsClient andNotification: aGsNotification
	| gemstoneDebuggerSessionOopType errorOopType |
	errorOopType := aGsNotification gci32xErrSType exceptionObj.
	gemstoneClient := aGsClient.
	gemstoneNotification := aGsNotification.
	gemstoneDebuggerSession := self gemstoneClient objectSerializer fromString: (self gemstoneClient 
		send: #buildDebuggerSessionForException:fromProcess:
		to: self gemstoneClient todeServerOopType
		withArgs: (Array 
			with: errorOopType
			with: gemstoneNotification contextOopType)).
	self logStackToFileIfNeeded.
	gemstoneDebuggerSessionOopType := gemstoneDebuggerSession selfForwarderOop gciResultToGsOopType: self gemstoneClient session.
	self gemstoneClient session registerClientObjectForwarderOopType: gemstoneDebuggerSessionOopType for: self.
	self clientSession ifNotNil: [ :aSession | aSession name: self name ]