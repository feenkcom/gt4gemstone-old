*GtGs-Inspector-Extensions
performStringAndBuildProxyFor: aString inContext: anObject literalVars: litVarArrayOrNil
	| resultObject |
	resultObject := self performString: aString inContext: anObject literalVars: litVarArrayOrNil.
	^ resultObject gtGsSerializedInspectorProxy