as yet unclassified
computeDiffToIncludeElementAt: anIndex inCache: cachedDisplayValue forPresentation: aGSPresentation
	| startIndex stopIndex newNodes |
	
	"The interval of objects that need to be computed and send back to the client"
	startIndex := 1 max: (anIndex - aGSPresentation amountToIncrement).
	stopIndex  := aGSPresentation numberOfElements min: (anIndex + aGSPresentation amountToIncrement).
	
	"Increase the size of the cache to ensure that it can hold all elements, if required."
	cachedDisplayValue size + 1 to: stopIndex do: [ :index |
		cachedDisplayValue add: nil ].
	
	"Compute a display value for all nodes that do not have already a cached display value."
	newNodes := OrderedCollection new: (stopIndex - startIndex + 1).
	startIndex to: stopIndex do: [ :index | | newValueNode |
		(cachedDisplayValue at: index) isNil ifTrue: [
			newValueNode := aGSPresentation buildDisplayNodeAt: index.
			newNodes add: (index -> newValueNode) ] ].
	
	diff := newNodes
