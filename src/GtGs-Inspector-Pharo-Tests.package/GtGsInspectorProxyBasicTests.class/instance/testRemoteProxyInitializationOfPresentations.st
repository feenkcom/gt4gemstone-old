tests
testRemoteProxyInitializationOfPresentations
	| inspectorProxy gsStatePresentation gsEvaluatorPresentation |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	
	gsStatePresentation := inspectorProxy gsPresentations first.
	gsEvaluatorPresentation := inspectorProxy gsPresentations second.
	
	self assert: (gsStatePresentation cache includesKey: #title).
	self assert: (gsStatePresentation cache includesKey: #displayValue).
	
	self assert: (gsEvaluatorPresentation cache includesKey: #title).
	self assert: (gsEvaluatorPresentation cache includesKey: #displayValue) not.
	