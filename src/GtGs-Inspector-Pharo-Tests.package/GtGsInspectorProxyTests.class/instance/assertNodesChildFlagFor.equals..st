assertions
assertNodesChildFlagFor: aColectionOfNodes equals: hasChildNodesFlags
	
	aColectionOfNodes withIndexDo: [ :aNode :anIndex |
		self assert: aNode hasChildNodes equals: (hasChildNodesFlags at: anIndex) ]
	