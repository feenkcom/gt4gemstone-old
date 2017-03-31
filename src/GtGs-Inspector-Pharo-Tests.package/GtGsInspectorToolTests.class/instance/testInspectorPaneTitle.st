tests
testInspectorPaneTitle
	| inspectorProxy compositePresentations |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	window := self openInspectorOn: inspectorProxy.
	compositePresentations := window model panes first presentations.

	self 
		assert: compositePresentations titleValue 
		equals: 'a ', inspectorProxy class name, ' (',inspectorProxy title, ')'
	
	
	