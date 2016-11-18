debugging actions
dbStep: stepDirective
  | currentStack level stepId processOop  |

	currentStack := self stack.
	processOop := currentStack processOop.
	stepId := #(#'into' #'over') indexOf: stepDirective.
	stepId == 1
		"ifTrue: [ level := 0 ]"
		ifTrue: [ 
			"Only step into if the first context is selected. If any other context is selected do a step over."
			level := currentStack currentFrame frameIndex.
			level == 1 ifTrue: [ level := 0 ] ]
		ifFalse: [ level := currentStack currentFrame frameIndex ].
	"self topez disableSessionMethods."
	processResult := self selfForwarder
		perform: #'dbStep:forProcessOop:'
		withArguments:
			{level.
			processOop}.
	processTerminated := (self debugExceptionSymbols includes: processResult) not.
	"self topez ensureSessionMethodsEnabled."
	currentStack resetFrames