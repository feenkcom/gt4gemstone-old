tests
testNumberOfVisiblePresentations
	| activePresentations |
	
	self evaluateAndOpenInspectorOn: self newBasicTestObject.
	activePresentations := (self allPresentationsFromPane: window model panes first)
		select: [ :each | each matches].
	
	self assert: activePresentations size equals: 5.
	self 
		assertCollection: (activePresentations collect: #titleValue) equals: 
		{ 'Raw' . 'Evaluator' . 'Meta' . 'Raw (Proxy)' . 'Meta (Proxy)' } asOrderedCollection 
	
	
	