testing
testStatePresentationUninitializedContent
	| inspectorProxy displayNodes |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.	
	displayNodes := inspectorProxy gsPresentations second cacheAt: #displayValue.
	
	self assert: (displayNodes allSatisfy: [ :aNode | aNode targetObject isNil ]).
	self assert: (displayNodes allSatisfy: [ :aNode | aNode formattedValue isNil ]).