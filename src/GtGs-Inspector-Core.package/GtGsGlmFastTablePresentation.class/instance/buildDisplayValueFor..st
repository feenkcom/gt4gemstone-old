private
buildDisplayValueFor: currentObjects
	displayObjects := currentObjects.
	numberOfElements := displayObjects size.
	currentIndex := (self amountToShow 
		ifNil: [ numberOfElements ]) min: numberOfElements.
	^ self buildDisplayNodesFrom: 1 to: currentIndex.