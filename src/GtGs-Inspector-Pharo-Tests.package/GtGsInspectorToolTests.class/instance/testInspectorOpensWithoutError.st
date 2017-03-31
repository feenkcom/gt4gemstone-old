tests
testInspectorOpensWithoutError
	| inspectorProxy |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	self shouldnt: [ window := self openInspectorOn: inspectorProxy ] raise: Error