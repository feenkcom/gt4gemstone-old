accessing
initialAmountOfElementsToDisplay
	^ (self amountToShow 
		ifNil: [ numberOfElements ]) min: numberOfElements