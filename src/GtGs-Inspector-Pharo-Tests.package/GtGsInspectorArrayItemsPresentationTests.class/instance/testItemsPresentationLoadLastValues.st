as yet unclassified
testItemsPresentationLoadLastValues
	| itemsPresentation cacheDisplayValue loadingStrategy |
	
	itemsPresentation := self buildItemsPresentationToTest.
	cacheDisplayValue := itemsPresentation cacheAt: #displayValue.
	
	loadingStrategy := self 
		buildDiffToIncludeElementsIn: itemsPresentation
		between: self numberOfElements - self amountToShow + 1
		and: self numberOfElements.
	
	self assert: loadingStrategy diffSize equals: self amountToShow.
	self assertLoadingStrategy: loadingStrategy hasContentFrom: self numberOfElements - self amountToShow + 1 to: self numberOfElements.
	
	loadingStrategy applyToCacheFromPresentation: itemsPresentation.
	
	self assert: cacheDisplayValue size equals: self numberOfElements. 