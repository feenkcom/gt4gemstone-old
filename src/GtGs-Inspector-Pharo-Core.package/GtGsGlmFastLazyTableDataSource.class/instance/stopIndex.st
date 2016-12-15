accessing
stopIndex
	^ stopIndex ifNil: [ stopIndex := self initialAmountOfElementsToDisplay ]