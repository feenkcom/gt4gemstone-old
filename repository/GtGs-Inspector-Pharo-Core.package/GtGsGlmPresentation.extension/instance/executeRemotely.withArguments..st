*GtGs-Inspector-Pharo-Core
executeRemotely: aSymbol withArguments: anArray

	^ self gemstoneClient objectSerializer fromString: 
		(self gemstoneClient session
			send: aSymbol
			to: self selfOopType
			withArgs: anArray)