as yet unclassified
createConfiguration
	| processorConfiguration |
	processorConfiguration := Dictionary new. 
	processorConfiguration at: 'title' put: self titleValue.
	processorConfiguration at: 'selfOop' put: self asOop.
	^ processorConfiguration