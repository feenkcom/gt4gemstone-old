tests
testItemsPresentationLoadLastValues
	| itemsPresentation |
	itemsPresentation := self buildItemsPresentationToTest.
	
	self assertItemsLoadedCorrectlyIn: itemsPresentation between: self numberOfElements - self amountToShow + 1 and: self numberOfElements. 