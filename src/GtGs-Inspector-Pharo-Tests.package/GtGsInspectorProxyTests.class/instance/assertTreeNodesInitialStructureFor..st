utils
assertTreeNodesInitialStructureFor: aCollectionOfNodes

	self assert: (aCollectionOfNodes allSatisfy: [ :aNode | aNode class = GtGsGlmTreeNode ]).
	self assert: (aCollectionOfNodes allSatisfy: [ :aNode | aNode rawChildNodes == nil ]).

	