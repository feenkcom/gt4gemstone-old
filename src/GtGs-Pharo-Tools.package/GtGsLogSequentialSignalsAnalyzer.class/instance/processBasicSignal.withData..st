callbacks
processBasicSignal: aSignal withData: currentData
	
	self addEvent: (GtGsLogBasicEvent new signal: aSignal)