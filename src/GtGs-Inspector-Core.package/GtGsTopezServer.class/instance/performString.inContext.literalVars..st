executing
performString: aString inContext: compilationContext literalVars: litVarArrayOrNil
	^ (aString 
		_compileInContext: compilationContext
    	symbolList: GsCurrentSession currentSession symbolList
    	oldLitVars: litVarArrayOrNil
    	environmentId: 0
    	flags: 0) _executeInContext: compilationContext
	