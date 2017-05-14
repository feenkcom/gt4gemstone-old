private
buildMethodPresentation
	"I build a presentation for displaying the home method of this stack frame.
	I setup the presentation so that code can be executed in the context of this stack frame."
	
	^ GtGsGlmMethodPresentation new
		title: [ 'Source' ];
		doItReceiver: [ self dotSelfObject ];
		literalVars: [ self dotSelfLiteralArray ];
		display: [ self homeMethodSource ];
		format: [ :aString | aString ];
		attachCodeExecutionActions;
		when: [ self gtGsIsGemstone ]
		"gsSelectionAct: [ :aGsPresentation | 	
				true ]
			on: nil 
			entitled: 'Accept'"