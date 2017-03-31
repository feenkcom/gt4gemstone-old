tests
testInspectorWindowTitle
	| inspectorProxy compositePresentations |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	window := self openInspectorOn: inspectorProxy.
	compositePresentations := window model panes first presentations.

	self
		assert: window title
		equals: 
			'Gemstone Inspector - ',  
			self client detailedDescription,  
			' - on ',  'a ', 
			inspectorProxy class name, 
			' (',inspectorProxy title, ')'
	
	