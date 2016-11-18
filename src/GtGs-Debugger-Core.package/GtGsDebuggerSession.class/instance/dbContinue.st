debugging actions
dbContinue
  | currentStack processOop |
	currentStack := self stack.
	processOop := currentStack processOop.
"  self topez disableSessionMethods."
	processResult := self selfForwarder
		perform: #'dbContinue:'
		with: processOop.
	processResult isSymbol
		ifTrue: [ processTerminated := (self debugExceptionSymbols includes: processResult) not ]
		ifFalse: [ 
			" processResult := self topezServer objectSerializer fromString: processResult."
			processTerminated := false ].
"  self topez ensureSessionMethodsEnabled."
	currentStack resetFrames.

	^ self dbFinishStep