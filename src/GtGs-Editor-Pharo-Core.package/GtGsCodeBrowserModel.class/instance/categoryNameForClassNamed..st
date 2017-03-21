accessing - remote
categoryNameForClassNamed: aClassName
	
	^ [ :currentClassName | (GsSession currentSession symbolList 
		objectNamed: currentClassName asSymbol) category ]
			gtGsPerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName }
	