accessing - remote
categoryNameForClassNamed: aClassName
	
	^ [ :currentClassName | (GsSession currentSession symbolList 
		objectNamed: currentClassName asSymbol) category ]
			gtGsBarePerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName }
	