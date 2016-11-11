*GtGs-Inspector-Pharo-Core
executeRemotely: aSymbol withArguments: anArray andDo: aBlock
	^ self gemstoneClient 
		executeRemotely: aSymbol 
		on: self selfOopType 
		withArguments: anArray 
		andDo: aBlock