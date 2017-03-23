private
buildDisplayValueFor: currentObjects
	| currentIndex |
	displayObjects ifNil: [ displayObjects := currentObjects ].
	self computeTotalNumberOfElements.
	currentIndex := self initialAmountOfElementsToDisplay.
	^ self buildDisplayNodesFrom: 1 to: currentIndex.