tests
testInitialAmmoutsForLazyLoading
	"This test ensures that the default values for controlling the lazy loading
	work as expected for standard collection presentations."
	| itemsPresentation |
	
	itemsPresentation := self buildItemsPresentationToTest.
	
	self assert: itemsPresentation amountToShow equals: self amountToShow.
	self assert: itemsPresentation amountToIncrement equals: self amountToIncrement.
	self assert: itemsPresentation initialAmountOfElementsToDisplay equals: self amountToShow