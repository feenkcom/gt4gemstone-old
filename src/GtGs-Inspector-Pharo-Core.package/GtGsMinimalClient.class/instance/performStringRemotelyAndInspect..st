actions - api
performStringRemotelyAndInspect: aString
	| inspectorProxy |
	inspectorProxy := self buildRemoteInspectorProxyFrom: aString.
	inspectorProxy inspect