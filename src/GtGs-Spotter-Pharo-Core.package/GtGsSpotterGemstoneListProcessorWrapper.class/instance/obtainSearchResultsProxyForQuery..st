querying
obtainSearchResultsProxyForQuery: searchQuery
	^ self gemstoneClient  
		buildRemoteInspectorProxyFromSelector: #searchResultsForQuery: 
		withArguments: { searchQuery }
		withRunner: self stepOopType