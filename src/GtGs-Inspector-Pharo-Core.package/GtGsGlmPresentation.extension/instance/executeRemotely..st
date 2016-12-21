*GtGs-Inspector-Pharo-Core
executeRemotely: aSymbol

	^ self gemstoneClient objectSerializer fromString: 
		(self gemstoneClient
			send: aSymbol
			to: self selfOopType)