querying
performSearchForFilter: filter inContext: context
	| searchQuery processorProxy searchResultsGsListPresentation | 
		
	searchQuery := context text ifEmpty: [ nil ] ifNotEmpty: [ :queryText | queryText asLowercase ].
	processorProxy := self runRemoteProcessorForQuery: searchQuery.
	searchResultsGsListPresentation := processorProxy  
		remoteInspectorPresentationFor: #targetObject
		using: #gtGsSpotterItemsIn:.
	context processor totalNumberOfElements: searchResultsGsListPresentation obtainTotalNumberOfElements.
	searchResultsGsListPresentation cachedDisplayValue do: [ :each | filter value: each formattedValue ]