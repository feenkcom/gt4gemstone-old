*GtGs-Inspector-Core
gtGsInspectorEvaluatorPresentationIn: aComposite
	<gtInspectorPresentationOrder: 12>
	
	^ aComposite pharoScript
		title: [ 'Evaluator' ];
		doItReceiver: [ self ];
		display: [ self gtGsInspectorName ];
		format: [ :aString | aString ];
		gsSelectionAct: [ :aGsPresenntation |
				aGsPresenntation selection: (
					aGsPresenntation performString: aGsPresenntation highlightedTextAsString) gtGsInspectorProxy ] 
			on: nil 
			entitled: 'Do it and go (experimental)';
		gsSelectionAct: [ :aGsPresenntation |
				aGsPresenntation performString: aGsPresenntation highlightedTextAsString ] 
			on: nil
			entitled: 'Do it (experimental)';
		attachCodeExecutionActions;
		when: [ self gtGsIsGemstone ]