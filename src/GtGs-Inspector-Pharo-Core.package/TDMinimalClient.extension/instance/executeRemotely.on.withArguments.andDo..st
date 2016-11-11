*GtGs-Inspector-Pharo-Core
executeRemotely: aSymbol on: anOopType withArguments: anArray andDo: aBlock
	| computationResult |
	computationResult := self objectSerializer fromString: 
		(self session
			send: aSymbol
			to: anOopType
			withArgs: anArray).
	^ aBlock cull: computationResult