executing
compileString: aString inContext: compilationContext literalVars: litVarArrayOrNil
	^ ((String includesSelector: #'_compileInContext:symbolList:oldLitVars:environmentId:flags:')
		ifTrue: [ (aString 
			_compileInContext: compilationContext
  	  		symbolList: GsCurrentSession currentSession symbolList
    		oldLitVars: litVarArrayOrNil
    		environmentId: 0
    		flags: 0) ]
		ifFalse: [ aString
			_compileInContext: compilationContext
  	  		symbolList: GsCurrentSession currentSession symbolList  ])
				
	
	