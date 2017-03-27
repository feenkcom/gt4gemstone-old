*GtGs-Inspector-Pharo-Core
evaluateStringRemotelyAndInspect: aString
	| inspectorProxy |
	inspectorProxy := self buildRemoteInspectorProxyFrom: aString.
	inspectorProxy inspect