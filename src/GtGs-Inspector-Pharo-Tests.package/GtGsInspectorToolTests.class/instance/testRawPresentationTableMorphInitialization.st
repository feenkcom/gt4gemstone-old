tests
testRawPresentationTableMorphInitialization
	| rawPresentation  tableMorp |
	
	self evaluateAndOpenInspectorOn: self newBasicTestObject.
	rawPresentation := ((self allPresentationsFromPane: window model panes first)
		select: [ :each | each matches]) first.

	self assert: rawPresentation titleValue equals: 'Raw'.
	
	tableMorp := self find: FTTableMorph in: window.
	self assert: tableMorp dataSource class equals: GLMFastTreeTableDataSource.
	self assert: tableMorp dataSource rootsItems size equals: 5.
	tableMorp dataSource rootsItems do: [ :anItem |
		self assert: anItem data class equals: GtGsGlmTreeNode ].
	
	
	