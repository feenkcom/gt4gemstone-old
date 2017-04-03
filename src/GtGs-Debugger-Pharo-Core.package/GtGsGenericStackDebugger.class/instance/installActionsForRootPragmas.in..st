overrides
installActionsForRootPragmas: aSymbolsCollectionOrBlock in: aPresentation

	aPresentation dynamicActions: [ :presentation |
		self actionsForPragmas: (aSymbolsCollectionOrBlock value collect: [ :aSymbol | #gt, aSymbol capitalized ]) ] .
	
	aPresentation dynamicActionsOnSelection: [ :presentation |
		self actionsForPragmas: (aSymbolsCollectionOrBlock value collect: [ :aSymbol | #gtContext, aSymbol capitalized ]) ] .