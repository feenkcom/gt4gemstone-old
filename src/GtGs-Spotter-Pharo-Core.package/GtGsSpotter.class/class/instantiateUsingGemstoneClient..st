instance creation
instantiateUsingGemstoneClient: aGemstoneClient 
	| spotterModelProxy |
	
	spotterModelProxy := aGemstoneClient 
		executeRemotely: #buildRemoteSpotterModel 
		on: aGemstoneClient todeServerOopType
		withArguments: #().
	
	spotterModelProxy
		gemstoneClient: aGemstoneClient.
	aGemstoneClient session registerForGarbageCollectionRemoteTool: spotterModelProxy.
	
	^ spotterModelProxy