assertions
assertItemsLoadedCorrectlyIn: anItemsPresentation between: aStartIndex and: aStopIndex
	| cacheDisplayValue loadingStrategy newSize |

	cacheDisplayValue := anItemsPresentation  cacheAt: #displayValue.
	newSize := cacheDisplayValue size max: aStopIndex.
	
	loadingStrategy := self buildDiffToIncludeElementsIn: anItemsPresentation between: aStartIndex and: aStopIndex.
	
	self assert: loadingStrategy diffSize equals: self amountToShow.
	"Test the value nodes."
	self assertNodesContentFor: (loadingStrategy diff collect: #value) equals: (self valuesFrom: aStartIndex to: aStopIndex). 
	"Test that the diff has the correct indexes."
	self assertCollection: (loadingStrategy diff collect: #key) hasSameElements: (aStartIndex to: aStopIndex).
	
	loadingStrategy applyToCacheFromPresentation: anItemsPresentation.
	
	self 
		assertNodesContentFor: (cacheDisplayValue copyFrom: aStartIndex to: aStopIndex)  
		equals: (self valuesFrom: aStartIndex to: aStopIndex). 
	self assert: cacheDisplayValue size equals: newSize. 