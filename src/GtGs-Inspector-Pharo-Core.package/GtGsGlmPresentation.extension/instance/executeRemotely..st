*GtGs-Inspector-Pharo-Core
executeRemotely: aSymbol

	^ self gemstoneClient objectSerializer fromString: 
		(self gemstoneClient session
			send: aSymbol
			to: self selfOopType)