as yet unclassified
updateGemstonSessionForNotification: aGsNotification
	gemstoneNotification := aGsNotification.
	gemstoneSession := self gemstoneClient objectSerializer fromString: (self gemstoneClient session 
		send: #buildDebuggerSessionForException:fromProcess:
		to: self gemstoneClient todeServerOopType
		withArgs: {gemstoneNotification exceptionOopType. gemstoneNotification contextOopType}).