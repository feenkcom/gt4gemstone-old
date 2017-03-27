executing
evaluateString: aString inContext: compilationContext literalVars: litVarArrayOrNil
	^ (self 
		compileString: aString 
		inContext: compilationContext 
		literalVars: litVarArrayOrNil) 
			_executeInContext: compilationContext 