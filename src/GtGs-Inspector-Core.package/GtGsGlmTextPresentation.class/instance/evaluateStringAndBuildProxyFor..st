callbacks
evaluateStringAndBuildProxyFor: aString

	^ self topezServer 
		evaluateStringAndBuildProxyFor: aString 
		inContext: self doItReceiver
		literalVars: self literalVars