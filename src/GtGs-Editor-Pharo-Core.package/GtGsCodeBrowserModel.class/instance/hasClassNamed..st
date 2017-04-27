accessing - remote
hasClassNamed: aClassName
	
	^ [ :currentClassName | (GsSession currentSession symbolList 
		objectNamed: currentClassName asSymbol) notNil ]
			gtGsBarePerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName }