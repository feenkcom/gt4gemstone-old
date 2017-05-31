querying
obtainSearchResultForQuery: searchQuery
	| inspectorProxy |
	inspectorProxy := self gemstoneClient 
		executeRemotely: #searchResultsRequestForQuery
		on: self stepOopType
		withArguments: { searchQuery }.
	inspectorProxy gemstoneClient: self gemstoneClient.
	"Ideally this should not be the case. When creating a proxy object directly without the use of the API 
	it should not be registered for garbage collection."
	^ self gemstoneClient proxyFinalizer registerForGarbageCollectionRemoteTool: inspectorProxy