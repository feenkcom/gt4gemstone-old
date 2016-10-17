testing
testStatePresentationColumnsStructure
	| inspectorProxy statePresentation |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.
	self assert: inspectorProxy gsPresentations size equals: 1.
	
	statePresentation :=inspectorProxy gsPresentations first.
	self assert: statePresentation class equals: GtGsGlmTablePresentation.
	self assert: statePresentation gemstoneClient equals: self client.
	self assert: statePresentation cache size equals: 2.
	self assert: statePresentation columns size equals: 2.
	
	self assert: (statePresentation cache includesKey: #title).
	self assert: (statePresentation cache includesKey: #displayValue).
	
	self assert: statePresentation columns first titleCache equals: 'Variable'.
	self assert: statePresentation columns second titleCache equals: 'Value'.