as yet unclassified
spotterProcessorsFor: aSpotterStep 
	| spoterProcessorsConfigurations |
	
	spoterProcessorsConfigurations := self obtainSpotterProcessorsConfigurations.
	spoterProcessorsConfigurations do: [ :aConfiguration | | newProcessor |
		newProcessor := GtGsSpotterGemstoneListProcessorWrapper new
			title: (aConfiguration at: 'title');
			filter: GTFilterSubstring item: [ :filter :context | 
				| searchQuery inspectorProxy gsListPresentation | 
				searchQuery := context text ifEmpty: [ nil ] ifNotEmpty: [ :queryText | queryText asLowercase ].
				inspectorProxy := self obtainSearchResultForQuery: searchQuery withProcessor: spoterProcessorsConfigurations.
				gsListPresentation := inspectorProxy  
					remoteInspectorPresentationFor: #targetObject
					using: #gtGsSpotterItemsIn:.
				context processor totalNumberOfElements: gsListPresentation obtainTotalNumberOfElements.
				gsListPresentation cachedDisplayValue do: [ :each | filter value: each formattedValue ] ]
			"initializeFromConfig: aConfiguration andData: processorData".
		aSpotterStep addProcessor: newProcessor ]