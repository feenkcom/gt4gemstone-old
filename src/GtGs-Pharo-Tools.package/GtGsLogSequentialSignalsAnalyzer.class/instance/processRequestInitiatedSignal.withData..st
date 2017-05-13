callbacks
processRequestInitiatedSignal: aSignal withData: currentData
	| currentStack |
	
	currentStack := self stackForSignal: aSignal.
	currentStack push: (GtGsLogRequestEvent new
		startSignal: aSignal)