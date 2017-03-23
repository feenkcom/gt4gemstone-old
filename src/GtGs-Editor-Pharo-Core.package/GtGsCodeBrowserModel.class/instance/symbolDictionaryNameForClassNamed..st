accessing - remote
symbolDictionaryNameForClassNamed: aClassName
	
	^ [ :currentClassName | (GsSession currentSession symbolList 
		objectNamed: currentClassName asSymbol) symbolDictionaryName asString ]
			gtGsBarePerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName }
	