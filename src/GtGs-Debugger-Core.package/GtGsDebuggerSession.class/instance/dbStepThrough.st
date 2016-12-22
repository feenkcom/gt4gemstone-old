debugging actions
dbStepThrough
  (self topezServer effectiveApiVersion < '1.4.0' asMetacelloVersionNumber
    or: [ 
      (System stoneVersionReport at: 'gsVersion') asMetacelloVersionNumber
        < '3.2.0' asMetacelloVersionNumber ])
    ifTrue: [ self dbSetThruBreaksDuring: [ self dbStep: #'over' ] ]
    ifFalse: [ 
      | currentStack level processOop |
      currentStack := self stack.
      processOop := currentStack processOop.
      level := currentStack currentFrame frameIndex.
      processResult := self selfForwarder
        perform: #'dbStepThrough:forProcessOop:'
        withArguments:
          {level.
          processOop}.
      processTerminated := (self debugExceptionSymbols includes: processResult)
        not.	"self topez ensureSessionMethodsEnabled."
      currentStack resetFrames ].
  ^ self dbFinishStep