callbacks
searchResultsRequestForQuery: searchQuery withProcessorOop: anOop
	| searchProcessor resultCollection |
	searchProcessor := self searchProcessorWithOpp: anOop.
	resultCollection := searchProcessor searchResultsForQuery: searchQuery.
	^ resultCollection gtGsSerializedInspectorProxyAndSelect: nil.
	