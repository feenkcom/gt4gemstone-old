actions - remote
compileRemoteMethodCode: aString
	| compiledMethodSelector |
	
	compiledMethodSelector := (self browserModel compileRemoteMethodCode: aString) ifNil: [ ^ false ].
	compiledMethodSelector ~= self browserModel methodSelector ifTrue: [
		self currentMethodsPresentation 
			update;
			selection: compiledMethodSelector ].
	^ true
	