scripting
allCandidates: aBlock
	self allCandidatesBlock: aBlock.
	^ self itemsBlock: [ :searchQuery | |formattedSearchQuery|
		formattedSearchQuery := searchQuery asLowercase.
		searchQuery = nil 
			ifTrue: [ self allCachedCandidates ]
			ifFalse: [ 
				self allCachedCandidates select: [ :anObject |  
					((self itemNameFor: anObject) findString: formattedSearchQuery startingAt: 1 caseSensitive: false) > 0 ] ] ]