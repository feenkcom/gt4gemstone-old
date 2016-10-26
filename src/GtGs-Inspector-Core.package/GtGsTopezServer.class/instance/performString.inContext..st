executing
performString: aString inContext: anObject
	^ aString 
		evaluateInContext: anObject
    	symbolList: GsCurrentSession currentSession symbolList.
	