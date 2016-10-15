testing
testStatePresentationTreeStructure
	| inspectorProxy displayNodes |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	self assert: inspectorProxy gsPresentations size equals: 1.
	
	displayNodes := inspectorProxy gsPresentations first cacheAt: #displayNodes.
	self assert: displayNodes size equals: 5.
	self assert: (displayNodes allSatisfy: [ :aNode | aNode class = GtGsGlmTreeNode ]).
	self assert: displayNodes first childNodes size equals: 4.
	self assert: (displayNodes first childNodes allSatisfy: [ :aNode | aNode childNodes isEmpty ]).
	self assert: ((displayNodes copyFrom: 2 to: 5) allSatisfy: [ :aNode | aNode childNodes isEmpty ]).