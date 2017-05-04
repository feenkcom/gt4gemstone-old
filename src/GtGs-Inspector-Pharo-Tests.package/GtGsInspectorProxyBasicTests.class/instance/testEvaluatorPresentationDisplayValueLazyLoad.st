tests
testEvaluatorPresentationDisplayValueLazyLoad
	| inspectorProxy gsEvaluatorPresentation displayValue |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	gsEvaluatorPresentation := inspectorProxy gsPresentations second.
	
	self assert: (gsEvaluatorPresentation cache includesKey: #displayValue) not.
	
	displayValue := gsEvaluatorPresentation obtainDisplayValue .
	self assert: displayValue equals: (gsEvaluatorPresentation cacheAt: #displayValue).
	self assert: displayValue class equals: GtGsGlmValueNode.
	self assert: displayValue targetObject equals: nil.
	self assert: displayValue selfOop isNil not.
	self assert: displayValue formattedValue equals: 'aGtGsTestObjectBasic'.