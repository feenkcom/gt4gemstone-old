utils
assertLoadingStrategy: aLoadingStrategy hasContentFrom: aStartIndex to: aStopIndex

	"Test the value nodes."
	self assertNodesColumnsContentFor: (aLoadingStrategy diff collect: #value) equals: (self valuesFrom: aStartIndex to: aStopIndex). 
	
	"Test that the diff has the correct indexes."
	self assertCollection: (aLoadingStrategy diff collect: #key) hasSameElements: (aStartIndex to: aStopIndex)