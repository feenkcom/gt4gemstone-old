accessing
stopIndex
	^ self rawStopIndex ifNil: [ 
		self updateStopIndexTo: self initialAmountOfElementsToDisplay ]