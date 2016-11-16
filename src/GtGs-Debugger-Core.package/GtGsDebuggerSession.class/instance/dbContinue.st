as yet unclassified
dbContinue
  | processOop |
  processOop := self stack processOop.
"  self topez disableSessionMethods."
  processResult := self selfForwarder
    perform: #'dbContinue:'
    with: processOop.
  processResult isSymbol
    ifTrue: [ processTerminated := (self debugExceptionSymbols includes: processResult) not ]
    ifFalse: [ 
      processResult := self topezServer objectSerializer fromString: processResult.
      processTerminated := false ].
"  self topez ensureSessionMethodsEnabled."
  self stack resetFrames.

  ^ self dbFinishStep