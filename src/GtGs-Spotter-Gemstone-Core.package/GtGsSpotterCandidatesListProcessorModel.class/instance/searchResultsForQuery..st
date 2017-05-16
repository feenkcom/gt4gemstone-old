as yet unclassified
searchResultsForQuery: searchQuery

	^ searchQuery = nil 
		ifTrue: [ self allCachedCandidates ]
		ifFalse: [ 
			self allCachedCandidates allSatisfying: [ :each |  
				(each name asLowercase findString: searchQuery startingAt: 1) > 0 ] ] 