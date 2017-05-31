as yet unclassified
obtainSearchResultForQuery: searchQuery withProcessor: aProcessorsConfiguration
	| inspectorProxy |
	inspectorProxy := self gemstoneClient 
		executeRemotely: #searchResultsRequestForQuery:withProcessorOop:
		on: self spotterModelOopType
		withArguments: { searchQuery . aProcessorsConfiguration at: 'selfOop'}.
	inspectorProxy gemstoneClient: self gemstoneClient.
	"Ideally this should not be the case. When creating a proxy object directly without the use of the API 
	it should not be registered for garbage collection."
	^ self gemstoneClient proxyFinalizer registerForGarbageCollectionRemoteTool: inspectorProxy
		
		
	