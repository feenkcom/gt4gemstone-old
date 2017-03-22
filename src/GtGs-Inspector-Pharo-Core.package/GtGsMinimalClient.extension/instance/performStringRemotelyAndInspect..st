*GtGs-Inspector-Pharo-Core
performStringRemotelyAndInspect: aString
	| inspectorProxy |
	inspectorProxy := self buildRemoteInspectorProxyFrom: aString.
	inspectorProxy inspect