actions
computeDiffToIncludeElementsBetween: aStartIndex and: aStopIndex withIterator: anIterator forPresentation: aGSPresentation
	| startIndex stopIndex cachedDisplayValue newNodes |
	
	"The interval of objects that need to be computed and send back to the client"
	startIndex := 1 max: aStartIndex.
	stopIndex  := aGSPresentation numberOfElements min: aStopIndex.
	
	"Increase the size of the cache to ensure that it can hold all elements, if required."
	cachedDisplayValue := aGSPresentation cachedDisplayValue.
	cachedDisplayValue size + 1 to: stopIndex do: [ :index |
		cachedDisplayValue add: nil ].
	
	"Compute a display value for all nodes that do not have already a cached display value."
	newNodes := OrderedCollection new: (stopIndex - startIndex + 1 + 1).
	anIterator 
		forElementsFrom: startIndex 
		to: stopIndex 
		withIndexDo: [ :anObject :anIndex | | newValueNode |
			(cachedDisplayValue at: anIndex) isNil ifTrue: [
				newValueNode := aGSPresentation buildDisplayNodeFor: anObject atIndex: anIndex.
				newNodes add: (anIndex -> newValueNode) ] ].
	
	diff := newNodes
