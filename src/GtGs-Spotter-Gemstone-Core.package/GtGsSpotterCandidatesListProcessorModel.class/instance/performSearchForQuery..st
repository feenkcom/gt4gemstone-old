callbacks
performSearchForQuery: searchQuery

	searchResults := self itemsBlock cull: searchQuery.
	^ self gtGsSerializedInspectorProxyAndSelect: nil.