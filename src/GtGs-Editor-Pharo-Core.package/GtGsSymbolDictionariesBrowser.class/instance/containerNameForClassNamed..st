accessing
containerNameForClassNamed: aClassName

	^  [ :currentClassName | (GsSession currentSession symbolList 
		objectNamed: currentClassName asSymbol) symbolDictionaryName asString ]
			gtGsPerformRemotelyOn: self browserModel gemstoneClient 
			withArguments: { aClassName }
	