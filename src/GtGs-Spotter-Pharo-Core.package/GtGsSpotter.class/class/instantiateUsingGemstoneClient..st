instance creation
instantiateUsingGemstoneClient: aGemstoneClient 
	| resultDictionary spotterModelOop spotterModelOopType spotterModelForwarderOopType spotterModel |
	
	resultDictionary := aGemstoneClient 
		executeRemotely: #buildRemoteSpotterModel 
		on: aGemstoneClient todeServerOopType
		withArguments: #().
		
	spotterModelOop := resultDictionary at: 'selfOop'.
	spotterModelOopType := spotterModelOop gciResultToGsOopType: aGemstoneClient session.
	spotterModelForwarderOopType := (resultDictionary at: 'forwarderOop') gciResultToGsOopType: aGemstoneClient session.
	spotterModel := self new 
		gemstoneClient: aGemstoneClient;
		spotterModelOopType: spotterModelOopType.
	aGemstoneClient session registerClientObjectForwarderOopType: spotterModelForwarderOopType for: spotterModel.
	
	^ spotterModel