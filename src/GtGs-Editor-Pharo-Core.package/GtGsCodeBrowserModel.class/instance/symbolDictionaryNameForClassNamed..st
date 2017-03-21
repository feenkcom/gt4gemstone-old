accessing - remote
symbolDictionaryNameForClassNamed: aClassName
	
	^ [ :currentClassName | (GsSession currentSession symbolList 
		objectNamed: currentClassName asSymbol) symbolDictionaryName asString ]
			gtGsPerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName }
	