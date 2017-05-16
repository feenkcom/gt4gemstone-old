as yet unclassified
obtainSpotterProcessorsConfigurations

	^ self topezServer
		executeRemotely: #spotterProcessorsConfigurationsRequest
		on: self spotterModelOopType