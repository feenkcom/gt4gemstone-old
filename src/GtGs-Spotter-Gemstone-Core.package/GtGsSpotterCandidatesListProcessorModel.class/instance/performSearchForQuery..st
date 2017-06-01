searching
performSearchForQuery: searchQuery

	searchResults := self allCandidatesBlock cull: searchQuery.
	^ self gtGsSerializedInspectorProxyAndSelect: nil.