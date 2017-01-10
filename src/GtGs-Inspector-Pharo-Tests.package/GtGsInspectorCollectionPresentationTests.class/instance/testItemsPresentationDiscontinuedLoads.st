tests
testItemsPresentationDiscontinuedLoads
	| itemsPresentation |
	itemsPresentation := self buildItemsPresentationToTest.
	
	self assertItemsLoadedCorrectlyIn: itemsPresentation between: (2*self amountToShow) + 1 and: 3 * self amountToShow.
	self assertItemsLoadedCorrectlyIn: itemsPresentation between: (4*self amountToShow) + 1 and: 5 * self amountToShow.
	self assertItemsLoadedCorrectlyIn: itemsPresentation between: (6*self amountToShow) + 1 and: 7 * self amountToShow.
	
	
	"self assertNodesColumnsContentFor: (itemsPresentation cacheAt: #displayValue) equals: (self valuesFrom: 1 to: 4 * self amountToShow). "
	