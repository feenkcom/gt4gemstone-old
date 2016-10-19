*GtGs-Inspector-Core
gtGsInspectorEvaluatorPresentationIn: aComposite
	<gtInspectorPresentationOrder: 6>
	
	^ aComposite pharoScript
		title: [ 'Evaluator (remote)' ];
		doItReceiver: [ self ];
		display: [  ];
		gsAct: [ :aGsPresenntation |
			(aGsPresenntation highlightedTextAsString)
				 evaluateInContext: aGsPresenntation doItReceiver value
    			 symbolList: (Smalltalk at: #GsCurrentSession) currentSession symbolList ] 
			on: $d 
			entitled: 'Do it';
		when: [ self gtGsIsGemstone ]