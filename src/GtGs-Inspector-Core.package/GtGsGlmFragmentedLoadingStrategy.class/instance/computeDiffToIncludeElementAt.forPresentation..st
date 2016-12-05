as yet unclassified
computeDiffToIncludeElementAt: anIndex forPresentation: aGtPresentation
	| startIndex stopIndex  cachedDisplayValue |
	cachedDisplayValue := self cacheAt: #displayValue.
	
	"The interval of objects that need to be computed and send back to the client".
	startIndex := 1 max: (anIndex - self amountToIncrement).
	stopIndex  := self numberOfElements min: (anIndex + self amountToIncrement).
	
	"Increase the size of the cache to ensure that it can hold all elements, if required."
	cachedDisplayValue size + 1 to: stopIndex do: [ :index |
		cachedDisplayValue add: nil ].
	
	^ { startIndex. stopIndex }
	
	"Compute a display value for all nodes that do not have already a cached display value."
	"newNodes := OrderedCollection new.
	startIndex to: stopIndex do: [ :index | | newValueNode |
		(cachedDisplayValue at: index) isNil ifTrue: [
			newValueNode := self buildDisplayNodeAt: index.
			newNodes add: (index -> newValueNode) ] ]."
