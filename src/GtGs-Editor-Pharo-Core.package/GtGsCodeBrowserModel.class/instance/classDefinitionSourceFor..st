accessing - code
classDefinitionSourceFor: aClassName

	^ [ :currentClassName | 
			(GsSession currentSession symbolList 
				objectNamed: currentClassName asSymbol) definition ]
			gtGsPerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName }
	
	