*GtGs-Inspector-Core
gtGsInspectorEvaluatorPresentationIn: aComposite
	<gtInspectorPresentationOrder: 12>
	
	^ aComposite pharoScript
		title: [ 'Evaluator' ];
		doItReceiver: [ self ];
		display: [ self inspectorName ];
		format: [ :aString | aString ];
		gsSelectionAct: [ :aGsPresenntation |
			aGsPresenntation selection: (GtGsInspectorProxy forObject: (aGsPresenntation highlightedTextAsString
				 evaluateInContext: aGsPresenntation doItReceiver
    			 symbolList: (Smalltalk at: #GsCurrentSession) currentSession symbolList))   ] 
			on: $d 
			entitled: 'Do it and go (experimental)';
		gsSelectionAct: [ :aGsPresenntation |
			(aGsPresenntation highlightedTextAsString)
				 evaluateInContext: aGsPresenntation doItReceiver
    			 symbolList: (Smalltalk at: #GsCurrentSession) currentSession symbolList ] 
			on: $d 
			entitled: 'Do it (experimental)';
		attachCodeExecutionActions;
		when: [ self gtGsIsGemstone ]