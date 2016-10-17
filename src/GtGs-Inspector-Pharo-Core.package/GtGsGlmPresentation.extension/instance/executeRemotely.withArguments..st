*GtGs-Inspector-Pharo-Core
executeRemotely: aSymbol withArguments: anArray

	^ self 
		executeRemotely: aSymbol 
		withArguments: anArray 
		andDo: [ :aResult | aResult ]