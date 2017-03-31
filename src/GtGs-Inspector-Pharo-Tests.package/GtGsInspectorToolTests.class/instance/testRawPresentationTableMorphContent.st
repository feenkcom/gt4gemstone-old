tests
testRawPresentationTableMorphContent
	| rawPresentation  tableMorp |
	
	self evaluateAndOpenInspectorOn: self newBasicTestObject.
	rawPresentation := ((self allPresentationsFromPane: window model panes first)
		select: [ :each | each matches]) first.
	
	tableMorp := self find: FTTableMorph in: window.
	
	tableMorp dataSource rootsItems withIndexDo: [ :anItem :anIndex | |gtGsNode fastTableRow|
		gtGsNode := anItem data.
		fastTableRow := tableMorp container  exposedRows at: anIndex.
		self assert: fastTableRow submorphs size equals: 2.
		self 
			assert: (self find: StringMorph in: fastTableRow submorphs first) contents 
			equals: gtGsNode columnValues first.
		self 
			assert: (self find: StringMorph in: fastTableRow submorphs second) contents 
			equals: gtGsNode columnValues second ].

	
	