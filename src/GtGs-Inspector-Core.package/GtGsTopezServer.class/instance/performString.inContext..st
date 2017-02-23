executing
performString: aString inContext: compilationContext
	^ self performString: aString inContext: compilationContext literalVars: nil
	