testing
testStatePresentationColumnsContent
	| inspectorProxy displayNodes |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.	
	displayNodes := inspectorProxy gsPresentations first cacheAt: #displayValue.
	
	self assertTreeNodesColumnsContentFor: displayNodes equals: {
		{ 'self'. 'aGtGsTestObjectBasic' }.
		{ #x. '42' }.
		{ #y. '43' }.
		{ #z. '44' }.
		{ #w. '45' }}.