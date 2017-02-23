callbacks
performString: aString

	^ self topezServer 
		performString: aString 
		inContext: self doItContext 
		literalVars: self literalVars