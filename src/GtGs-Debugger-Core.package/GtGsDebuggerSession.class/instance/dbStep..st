debugging actions
dbStep: stepDirective
  "stepDirective: #'into' #'over' #thru"

  | currentStack level processOop clientSelector |
  currentStack := self stack.
  processOop := currentStack processOop.
  stepDirective == #'into'
    ifTrue: [ 
      "Only step into if the first context is selected. If any other context is selected do a step over."
      level := currentStack currentFrame frameIndex.
      level == 1
        ifTrue: [ level := 0 ] ]
    ifFalse: [ level := currentStack currentFrame frameIndex ].
  clientSelector := #'dbStep:forProcessOop:'.
  stepDirective == #'thru'
    ifTrue: [ clientSelector := #'dbStepThrough:forProcessOop:' ].
  processResult := self selfForwarder
    perform: clientSelector
    withArguments:
      {level.
      processOop}.
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  currentStack resetFrames