utils
assertNodesColumnsContentFor: aColectionOfNodes  equals: aListOfValues

	aColectionOfNodes withIndexDo: [ :aNode :anIndex |
		self assertCollection: aNode columnValues hasSameElements: (aListOfValues at: anIndex) ]