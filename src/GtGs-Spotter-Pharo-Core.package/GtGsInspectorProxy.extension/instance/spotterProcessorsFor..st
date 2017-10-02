*GtGs-Spotter-Pharo-Core
spotterProcessorsFor: aSpotterStep 
	| spoterProcessorsConfigurations |
	
	spoterProcessorsConfigurations := self 
		cacheAt: 'spotterProcessors'
		ifAbsentPut: [ 
			"Only make an initial request to instantiate and obtain the remote processors."
			spoterProcessorsConfigurations := self gemstoneClient
				executeRemotely: #spotterProcessorsConfigurationsRequest
				on: self selfOopType
				withArguments: #() ].
	spoterProcessorsConfigurations do: [ :aConfiguration | 
		aSpotterStep addProcessor: ((GtGsSpotterGemstoneListProcessorWrapper newFromConfiguration: aConfiguration)
			gemstoneClient: self gemstoneClient;
			yourself) ]