*GtGs-Inspector-Pharo-Core
executeRemotely: aSymbol withArguments: anArray andDo: aBlock
	| computationResult |
	computationResult := self gemstoneClient objectSerializer fromString: 
		(self gemstoneClient session
			send: aSymbol
			to: self selfOopType
			withArgs: anArray).
	^ aBlock cull: computationResult