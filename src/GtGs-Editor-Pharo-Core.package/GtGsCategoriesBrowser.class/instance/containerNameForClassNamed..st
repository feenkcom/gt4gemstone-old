accessing
containerNameForClassNamed: aClassName

	^  [ :currentClassName | (GsSession currentSession symbolList 
		objectNamed: currentClassName asSymbol) category ]
			gtGsPerformRemotelyOn: self browserModel gemstoneClient 
			withArguments: { aClassName }
	