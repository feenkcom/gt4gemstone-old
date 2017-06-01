querying
performSearchForFilter: filter inContext: context
	| searchQuery searchResultsGsListPresentation | 
		
	searchQuery := context text ifEmpty: [ nil ] ifNotEmpty: [ :queryText | queryText trimBoth ].
	processorProxy := self runRemoteProcessorForQuery: searchQuery.
	searchResultsGsListPresentation := processorProxy  
		remoteInspectorPresentationFor: #targetObject
		using: #gtGsSpotterItemsIn:.
	context processor totalNumberOfElements: searchResultsGsListPresentation obtainTotalNumberOfElements.
	searchResultsGsListPresentation cachedDisplayValue do: [ :each | filter value: each ]