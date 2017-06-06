instance creation
instantiateUsingGemstoneClient: aGemstoneClient 
	| resultDictionary spotterModelOop spotterModelOopType spotterModelForwarderOopType spotterModel |
	
	resultDictionary := aGemstoneClient 
		send: #buildRemoteSpotterModel 
		to: aGemstoneClient todeServerOopType.
		
	spotterModelOop := resultDictionary at: 'selfOop'.
	spotterModelOopType := spotterModelOop gciResultToGsOopType: aGemstoneClient session.
	spotterModelForwarderOopType := (resultDictionary at: 'forwarderOop') gciResultToGsOopType: aGemstoneClient session.
	spotterModel := self new 
		gemstoneClient: aGemstoneClient;
		spotterModelOopType: spotterModelOopType.
	self session registerClientObjectForwarderOopType: spotterModelForwarderOopType for: spotterModel.
	
	^ spotterModel