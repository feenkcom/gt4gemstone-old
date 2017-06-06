as yet unclassified
obtainSearchResultForQuery: searchQuery withProcessor: spoterProcessorsConfigurations
	| inspectorProxy |
	inspectorProxy := self gemstoneClient 
		executeRemotely: #searchResultsRequestForQuery:withProcessorOop:
		on: self spotterModelOopType
		withArguments: { searchQuery . spoterProcessorsConfigurations at: 'selfOop'}.
	"Ideally this should not be the case. When creating a proxy object directly without the use of the API 
	it should not be registered for garbage collection."
	^ self proxyFinalizer registerForGarbageCollectionRemoteTool: inspectorProxy
		
		
	