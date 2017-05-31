searching
searchResultsForQuery: searchQuery

	searchResults := searchQuery = nil 
		ifTrue: [ self allCachedCandidates ]
		ifFalse: [ 
			self allCachedCandidates select: [ :anObject |  
				((self itemNameFor: anObject) findString: searchQuery startingAt: 1 caseSensitive: false) > 0 ] ].
	^ searchResults gtGsSerializedInspectorProxyAndSelect: nil.