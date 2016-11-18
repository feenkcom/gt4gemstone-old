debugging actions
dbStep: stepDirective
  | level stepId processOop  |

  processOop := self stack processOop.
  stepId := #(#'into' #'over') indexOf: stepDirective.
  stepId == 1
    "ifTrue: [ level := 0 ]"
	 ifTrue: [ 
		"Only step into if the first context is selected. If any other context is selected do a step over."
		level := self stack currentFrame frameIndex.
		level == 1 ifTrue: [ level = 0 ] ]
    ifFalse: [ level := self stack currentFrame frameIndex ].
  "self topez disableSessionMethods."
   processResult := self selfForwarder
  		perform: #'dbStep:forProcessOop:'
		withArguments:
			{level.
			processOop}.
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  "self topez ensureSessionMethodsEnabled."
  self stack resetFrames