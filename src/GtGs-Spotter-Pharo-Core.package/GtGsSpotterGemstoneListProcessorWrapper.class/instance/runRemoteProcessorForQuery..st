querying
runRemoteProcessorForQuery: searchQuery
	^ self gemstoneClient  
		buildRemoteInspectorProxyFromSelector: #performSearchForQuery: 
		withArguments: { searchQuery }
		withRunner: self stepOopType