accessing - remote
hasClassNamed: aClassName
	
	^ [ :currentClassName | (GsSession currentSession symbolList 
		objectNamed: currentClassName) notNil ]
			gtGsBarePerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName }