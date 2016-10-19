*GtGs-Inspector-Core
gtGsInspectorEvaluatorPresentationIn: aComposite
	<gtInspectorPresentationOrder: 6>
	
	^ aComposite pharoScript
		title: [ 'Evaluator (remote)' ];
		doItReceiver: [ self ];
		display: [  ];
		gsAct: [ :aGsPresenntation |
			aGsPresenntation selection: (GtGsInspectorProxy forObject: (aGsPresenntation highlightedTextAsString
				 evaluateInContext: aGsPresenntation doItReceiver value
    			 symbolList: (Smalltalk at: #GsCurrentSession) currentSession symbolList))   ] 
			on: $d 
			entitled: 'Do it and go (remote)';
		gsAct: [ :aGsPresenntation |
			(aGsPresenntation highlightedTextAsString)
				 evaluateInContext: aGsPresenntation doItReceiver value
    			 symbolList: (Smalltalk at: #GsCurrentSession) currentSession symbolList ] 
			on: $d 
			entitled: 'Do it (remote)';
		when: [ self gtGsIsGemstone ]