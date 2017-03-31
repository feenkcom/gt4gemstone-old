utils
evaluateAndOpenInspectorOn: aString
	| inspectorProxy |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	window := self openInspectorOn: inspectorProxy.
	^ inspectorProxy