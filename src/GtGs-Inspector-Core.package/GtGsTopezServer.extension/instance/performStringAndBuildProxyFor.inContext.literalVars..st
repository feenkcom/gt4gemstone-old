*GtGs-Inspector-Core
performStringAndBuildProxyFor: aString inContext: anObject literalVars: litVarArrayOrNil
	| resultObject |
	resultObject := self evaluateString: aString inContext: anObject literalVars: litVarArrayOrNil.
	^ resultObject gtGsSerializedInspectorProxy