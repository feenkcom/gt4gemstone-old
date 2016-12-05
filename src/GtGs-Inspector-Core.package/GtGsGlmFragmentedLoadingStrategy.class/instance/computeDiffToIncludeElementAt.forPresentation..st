as yet unclassified
computeDiffToIncludeElementAt: anIndex forPresentation: aGtPresentation
	| startIndex stopIndex newNodes cachedDisplayValue |
	cachedDisplayValue := self cacheAt: #displayValue.
	
	"The interval of objects that need to be computed and send back to the client".
	startIndex := 1 max: (anIndex - self amountToIncrement).
	stopIndex  := self numberOfElements min: (anIndex + self amountToIncrement).
	
	"Increase the size of the cache to ensure that it can hold all elements, if required."
	cachedDisplayValue size + 1 to: stopIndex do: [ :index |
		cachedDisplayValue add: nil ].
	
	"Compute a display value for all nodes that do not have already a cached display value."
	newNodes := OrderedCollection new.
	startIndex to: stopIndex do: [ :index || newValueNode |
		(cachedDisplayValue at: index) isNil ifTrue: [
			newValueNode := self buildDisplayNodeAt: index.
			newNodes add: (index -> newValueNode) ] ].
	
	"startIndex := currentIndex + 1.
	[ currentIndex < anIndex ] whileTrue: [ 
		currentIndex := currentIndex + self amountToIncrement ].
	newNodes := self buildDisplayNodesFrom: startIndex to: currentIndex.
	(self cacheAt: #displayValue) addAll: newNodes."
	
	^ self topezServer objectSerializer toString: newNodes