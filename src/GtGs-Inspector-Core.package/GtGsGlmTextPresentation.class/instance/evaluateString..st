callbacks
evaluateString: aString

	^ self topezServer 
		evaluateString: aString 
		inContext: self doItReceiver
		literalVars: self literalVars