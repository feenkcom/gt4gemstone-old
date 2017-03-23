tests
testItemsPresentationRedundantInitialLoad
	| itemsPresentation cacheDisplayValue loadingStrategy |
	
	itemsPresentation := self buildItemsPresentationToTest.
	cacheDisplayValue := itemsPresentation cacheAt: #displayValue.
	
	loadingStrategy := self buildDiffToIncludeElementsIn: itemsPresentation between: 1 and: self amountToShow.
	self assert: loadingStrategy diffSize equals: 0.
	
	loadingStrategy applyToCacheFromPresentation: itemsPresentation.
	self assert: cacheDisplayValue size equals: self amountToShow. 