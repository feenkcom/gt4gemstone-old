as yet unclassified
obtainSpotterProcessorsConfigurations

	^ self gemstoneClient
		executeRemotely: #spotterProcessorsConfigurationsRequest
		on: self spotterModelOopType
		withArguments: #()