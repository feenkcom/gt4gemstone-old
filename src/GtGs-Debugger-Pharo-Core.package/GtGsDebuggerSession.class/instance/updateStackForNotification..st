as yet unclassified
updateStackForNotification: aGsNotification
	gemstoneNotification := aGsNotification.
	gemstoneStack := self gemstoneClient objectSerializer fromString: (self gemstoneClient session 
		send: #buildDebuggerStackForException:fromProcess:
		to: self gemstoneClient todeServerOopType
		withArgs: {gemstoneNotification exceptionOopType. gemstoneNotification contextOopType}).