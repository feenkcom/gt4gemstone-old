scripting
allCandidates: aBlock
	self allCandidatesBlock: aBlock.
	^ self itemsBlock: [ :searchQuery | |formattedSearchQuery|
		searchQuery = nil 
			ifTrue: [ self allCachedCandidates ]
			ifFalse: [ 
				formattedSearchQuery := searchQuery asLowercase.
				self allCachedCandidates select: [ :anObject |  
					((self itemNameFor: anObject) findString: formattedSearchQuery startingAt: 1 caseSensitive: false) > 0 ] ] ]