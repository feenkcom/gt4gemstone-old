private
buildDisplayValueFor: currentObjects
	displayObjects := currentObjects.
	numberOfElements := displayObjects size.
	currentIndex := (self amountToShow 
		ifNil: [ numberOfElements size ]) min: numberOfElements size.
	^ self buildDisplayNodesFrom: 1 to: currentIndex.