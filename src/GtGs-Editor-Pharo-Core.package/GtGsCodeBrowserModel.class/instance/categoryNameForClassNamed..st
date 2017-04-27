accessing - remote
categoryNameForClassNamed: aClassName
	
	^ [ :currentClassName | (GsSession currentSession symbolList 
		objectNamed: currentClassName asSymbol) ifNotNil: [ :aClass | aClass category ] ]
			gtGsBarePerformRemotelyOn: self gemstoneClient 
			withArguments: { aClassName }
	