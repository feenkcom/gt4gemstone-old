*GtGs-Inspector-Pharo-Core
executeRemotely: aSymbol on: anOopType withArguments: anArray

	^ self 
		executeRemotely: aSymbol 
		on: anOopType
		withArguments: anArray 
		andDo: [ :aResult | aResult ]