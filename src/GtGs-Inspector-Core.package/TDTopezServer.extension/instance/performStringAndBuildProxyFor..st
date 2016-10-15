*GtGs-Inspector-Core
performStringAndBuildProxyFor: aString
	| resultObject |
	resultObject := (Smalltalk at: #GsCurrentSession) currentSession execute: aString.
	^ resultObject gtGsInspectorProxy