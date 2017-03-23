*GtGs-ClientGemstone-Topez
performString: aString inContext: compilationContext literalVars: litVarArrayOrNil
	(String includesSelector: #'_compileInContext:symbolList:oldLitVars:environmentId:flags:')
		ifTrue: [ ^ (aString 
			_compileInContext: compilationContext
  	  		symbolList: GsCurrentSession currentSession symbolList
    		oldLitVars: litVarArrayOrNil
    		environmentId: 0
    		flags: 0) _executeInContext: compilationContext  ]
		ifFalse: [ ^ aString
			evaluateInContext: compilationContext
    		symbolList: GsCurrentSession currentSession symbolList.
	 ]
	
	