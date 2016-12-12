testing
testStatePresentationStructureRootNodesWithChildren
	| inspectorProxy rootDisplayNodes |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newComposeTestObject.	
	rootDisplayNodes := inspectorProxy gsPresentations second cacheAt: #displayValue.
	
	self assert: rootDisplayNodes size equals: 5.
	
	self assertTreeNodesInitialStructureFor: rootDisplayNodes.
	self assertTreeNodesChildFlagFor: rootDisplayNodes equals: { false. false. true. true. false}.