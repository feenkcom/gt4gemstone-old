*GtGs-Inspector-Core
gtGsInspectorEvaluatorPresentationIn: aComposite
	<gtInspectorPresentationOrder: 12>
	
	^ aComposite pharoScript
		title: [ 'Evaluator' ];
		doItReceiver: [ self ];
		display: [ self inspectorName ];
		format: [ :aString | aString ];
		gsAct: [ :aGsPresenntation |
			aGsPresenntation selection: (GtGsInspectorProxy forObject: (aGsPresenntation highlightedTextAsString
				 evaluateInContext: aGsPresenntation doItReceiver
    			 symbolList: (Smalltalk at: #GsCurrentSession) currentSession symbolList))   ] 
			on: $d 
			entitled: 'Do it and go (remote)';
		gsAct: [ :aGsPresenntation |
			(aGsPresenntation highlightedTextAsString)
				 evaluateInContext: aGsPresenntation doItReceiver
    			 symbolList: (Smalltalk at: #GsCurrentSession) currentSession symbolList ] 
			on: $d 
			entitled: 'Do it (remote)';
		attachCodeExecutionActions;
		when: [ self gtGsIsGemstone ]