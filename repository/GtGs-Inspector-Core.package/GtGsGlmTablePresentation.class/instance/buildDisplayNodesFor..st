private
buildDisplayNodesFor: currentObjects 
	| displayNodes |
	
	displayNodes := super buildDisplayNodesFor: currentObjects .
	displayNodes do: [ :aDisplayNode |
		self columns do: [ :aGsColumn |
			aDisplayNode columnValues add: (
				aGsColumn computationBlock value: aDisplayNode targetObject) ] ].
	^ displayNodes