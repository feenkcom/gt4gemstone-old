*GtGs-Inspector-Core
performStringAndBuildProxyFor: aString inContext: anObject
	| resultObject |
	resultObject := aString 
		evaluateInContext: anObject
    	symbolList: (Smalltalk at: #GsCurrentSession) currentSession symbolList.
	^ resultObject gtGsInspectorProxy