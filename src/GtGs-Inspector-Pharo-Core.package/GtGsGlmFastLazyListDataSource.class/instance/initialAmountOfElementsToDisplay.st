accessing
initialAmountOfElementsToDisplay
	| totalNumberOfElements |
	totalNumberOfElements := self totalNumberOfRows.
	^  (self gtGsPresentation amountToShow 
			ifNil: [ totalNumberOfElements ]) min: totalNumberOfElements