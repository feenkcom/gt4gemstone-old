as yet unclassified
spotterProcessorsFor: aSpotterStep 
	
	
	spoterProcessorsConfigurations ifNil: [ 
		"This method is somewhow called multiple times "
		spoterProcessorsConfigurations := self obtainSpotterProcessorsConfigurations ].
	spoterProcessorsConfigurations withIndexDo: [ :aConfiguration :anIndex | | newProcessor |
		newProcessor := GtGsSpotterGemstoneListProcessorWrapper new
			title: (aConfiguration at: 'title');
			order: anIndex;
			filter: GTFilterSubstring item: [ :filter :context | 
				| searchQuery inspectorProxy gsListPresentation | 
				
				searchQuery := context text ifEmpty: [ nil ] ifNotEmpty: [ :queryText | queryText asLowercase ].
				inspectorProxy := self obtainSearchResultForQuery: searchQuery withProcessor: aConfiguration.
				gsListPresentation := inspectorProxy  
					remoteInspectorPresentationFor: #targetObject
					using: #gtGsSpotterItemsIn:.
				context processor totalNumberOfElements: gsListPresentation obtainTotalNumberOfElements.
				gsListPresentation cachedDisplayValue do: [ :each | filter value: each formattedValue ] ]
			"initializeFromConfig: aConfiguration andData: processorData".
		aSpotterStep addProcessor: newProcessor ]