callbacks
performStringAndBuildProxyFor: aString

	^ self topezServer 
		performStringAndBuildProxyFor: aString 
		inContext: self doItReceiver
		literalVars: self literalVars