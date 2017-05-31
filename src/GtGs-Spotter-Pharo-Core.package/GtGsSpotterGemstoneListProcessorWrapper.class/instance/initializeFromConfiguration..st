initialization
initializeFromConfiguration: aConfiguration

	self
		title: (aConfiguration at: 'title');
		order: (aConfiguration at: 'order');
		stepOop: (aConfiguration at: 'stepOop').
	self
		filter: GTFilterSubstring item: [ :filter :context | 
		| searchQuery inspectorProxy gsListPresentation | 
			
		searchQuery := context text ifEmpty: [ nil ] ifNotEmpty: [ :queryText | queryText asLowercase ].
		inspectorProxy := self obtainSearchResultForQuery: searchQuery.
		gsListPresentation := inspectorProxy  
			remoteInspectorPresentationFor: #targetObject
			using: #gtGsSpotterItemsIn:.
		context processor totalNumberOfElements: gsListPresentation obtainTotalNumberOfElements.
		gsListPresentation cachedDisplayValue do: [ :each | filter value: each formattedValue ] ]