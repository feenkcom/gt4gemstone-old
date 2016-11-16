as yet unclassified
dbContinue
  | processOop |
  stack := self stack.
  processOop := stack processOop.
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
  stack resetFrames.

  ^ processResult