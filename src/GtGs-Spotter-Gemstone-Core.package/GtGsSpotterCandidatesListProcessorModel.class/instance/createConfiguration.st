actions
createConfiguration
	| processorConfiguration |
	processorConfiguration := Dictionary new. 
	processorConfiguration at: 'title' put: self titleValue.
	processorConfiguration at: 'stepOop' put: self asOop.
	^ processorConfiguration