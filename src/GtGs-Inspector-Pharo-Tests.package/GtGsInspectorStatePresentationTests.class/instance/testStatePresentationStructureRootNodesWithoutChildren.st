testing
testStatePresentationStructureRootNodesWithoutChildren
	| inspectorProxy rootDisplayNodes |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	rootDisplayNodes := inspectorProxy gsPresentations first cacheAt: #displayValue.
	
	self assert: rootDisplayNodes size equals: 5.
	
	self assertTreeNodesInitialStructureFor: rootDisplayNodes.
	self assertNodesChildFlagFor: rootDisplayNodes equals: { false. false. false. false. false}.