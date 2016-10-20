*GtGs-Inspector-Core
gtGsInspectorEvaluatorPresentationIn: aComposite
	<gtInspectorPresentationOrder: 12>
	
	^ aComposite pharoScript
		title: [ 'Evaluator' ];
		doItReceiver: [ self ];
		display: [ self inspectorName ];
		format: [ :aString | aString ];
		gsSelectionAct: [ :aGsPresenntation |
				aGsPresenntation selection: (
					aGsPresenntation performStringAndBuildProxyFor: aGsPresenntation highlightedTextAsString) ] 
			on: $d 
			entitled: 'Do it and go (experimental)';
		gsSelectionAct: [ :aGsPresenntation |
				aGsPresenntation performString: aGsPresenntation highlightedTextAsString ] 
			on: $d 
			entitled: 'Do it (experimental)';
		attachCodeExecutionActions;
		when: [ self gtGsIsGemstone ]