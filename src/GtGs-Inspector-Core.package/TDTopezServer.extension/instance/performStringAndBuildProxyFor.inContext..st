*GtGs-Inspector-Core
performStringAndBuildProxyFor: aString inContext: anObject
	| resultObject |
	resultObject := self performString: aString inContext: anObject.
	^ resultObject gtGsInspectorProxy