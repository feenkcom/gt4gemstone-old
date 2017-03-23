tests
testItemsPresentationConsecutiveLoads
	| itemsPresentation |
	itemsPresentation := self buildItemsPresentationToTest.
	
	self assertItemsLoadedCorrectlyIn: itemsPresentation between: self amountToShow + 1 and: 2 * self amountToShow.
	self assertItemsLoadedCorrectlyIn: itemsPresentation between: (2*self amountToShow) + 1 and: 3 * self amountToShow.
	self assertItemsLoadedCorrectlyIn: itemsPresentation between: (3*self amountToShow) + 1 and: 4 * self amountToShow.
	
	
	self assertNodesContentFor: (itemsPresentation cacheAt: #displayValue) equals: (self valuesFrom: 1 to: 4 * self amountToShow). 
	