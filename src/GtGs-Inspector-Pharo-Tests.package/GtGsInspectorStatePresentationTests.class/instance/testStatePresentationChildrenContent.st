testing
testStatePresentationChildrenContent
	| inspectorProxy gsStatePresentation fourthRootNode fourthRootNodeLastChild |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newComposeTestObject.
	gsStatePresentation := inspectorProxy gsPresentations first.
	fourthRootNode := (gsStatePresentation cacheAt: #displayValue) fourth.

	gsStatePresentation updateChildNodesFor: fourthRootNode.
	self assertTreeNodesColumnsContentFor: fourthRootNode rawChildNodes equals: {
		{ #x. '6' }.
		{ #y. '7' }.
		{ #z. '8' }.
		{ #w. 'aGtGsTestObjectBasic' }}.
	
	fourthRootNodeLastChild := fourthRootNode rawChildNodes fourth.
	gsStatePresentation updateChildNodesFor: fourthRootNodeLastChild.
	self assertTreeNodesColumnsContentFor: fourthRootNodeLastChild rawChildNodes equals: {
		{ #x. '9' }.
		{ #y. '10' }.
		{ #z. '11' }.
		{ #w. '12' }}.
	
	

	