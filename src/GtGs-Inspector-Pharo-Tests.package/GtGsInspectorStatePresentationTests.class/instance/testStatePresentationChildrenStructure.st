testing
testStatePresentationChildrenStructure
	| inspectorProxy gsStatePresentation fourthRootNode fourthRootNodeLastChild |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newComposeTestObject.
	gsStatePresentation := inspectorProxy gsPresentations first.
	fourthRootNode := (gsStatePresentation cacheAt: #displayValue) fourth.
	
	self assert: fourthRootNode rawChildNodes equals: nil.
	gsStatePresentation updateChildNodesFor: fourthRootNode.
	self assert: fourthRootNode rawChildNodes size equals: 4.
	
	self assertTreeNodesInitialStructureFor: fourthRootNode rawChildNodes.
	self assertNodesChildFlagFor: fourthRootNode rawChildNodes equals: { false. false. false. true }.
	
	fourthRootNodeLastChild := fourthRootNode rawChildNodes fourth.
	gsStatePresentation updateChildNodesFor: fourthRootNodeLastChild.
	
	self assertTreeNodesInitialStructureFor: fourthRootNodeLastChild rawChildNodes.
	self assertNodesChildFlagFor: fourthRootNodeLastChild rawChildNodes equals: { false. false. false. false }.

	