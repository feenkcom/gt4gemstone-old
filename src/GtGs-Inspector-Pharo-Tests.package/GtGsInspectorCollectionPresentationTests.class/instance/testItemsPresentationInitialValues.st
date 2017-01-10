tests
testItemsPresentationInitialValues
	| itemsPresentation cacheDisplayValue |
	
	itemsPresentation := self buildItemsPresentationToTest.
	cacheDisplayValue := itemsPresentation cacheAt: #displayValue.
	
	self assert: cacheDisplayValue size equals: itemsPresentation amountToShow.
	self assertNodesContentFor: cacheDisplayValue equals: (self valuesFrom: 1 to: self amountToShow). 