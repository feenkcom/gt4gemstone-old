callbacks
performString: aString

	^ self topezServer 
		performString: aString 
		inContext: self doItReceiver
		literalVars: self literalVars