assertions
assertNodesContentFor: aColectionOfNodes  equals: aListOfValues

	aColectionOfNodes withIndexDo: [ :aNode :anIndex |
		self assertCollection: (self contentOfNode: aNode) hasSameElements: (aListOfValues at: anIndex) ]