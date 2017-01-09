tests
testNumberOfElements
	| itemsPresentation |
	
	itemsPresentation := self buildItemsPresentationToTest.
	
	"Test both the direct accessor and the callback for initiaizing the number of elements."
	self assert: itemsPresentation numberOfElements equals: self numberOfElements.
	self assert: itemsPresentation obtainTotalNumberOfElements equals: self numberOfElements.
	
	self 
		should: [ itemsPresentation computeTotalNumberOfElements ] 
		raise: Error 
		description: 'The callback should only be executed on the Gemstone side'.