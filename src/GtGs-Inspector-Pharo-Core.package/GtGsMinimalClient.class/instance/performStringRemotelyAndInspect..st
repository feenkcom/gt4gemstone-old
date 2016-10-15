as yet unclassified
performStringRemotelyAndInspect: aString
	| inspectorProxy |
	inspectorProxy := self buildRemoteInspectorProxyFrom: aString.
	inspectorProxy inspect.
