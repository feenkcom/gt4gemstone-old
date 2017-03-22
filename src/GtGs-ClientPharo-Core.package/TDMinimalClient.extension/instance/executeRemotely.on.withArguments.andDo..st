*GtGs-ClientPharo-Core
executeRemotely: aSymbol on: anOopType withArguments: anArray andDo: aBlock
	| computationResult |
	computationResult := self objectSerializer fromString: 
		(self
			send: aSymbol
			to: anOopType
			withArgs: anArray).
	^ aBlock cull: computationResult