callbacks
debugString: aString

	^ self topezServer 
		debugString: aString 
		inContext: self doItReceiver
		literalVars: self literalVars