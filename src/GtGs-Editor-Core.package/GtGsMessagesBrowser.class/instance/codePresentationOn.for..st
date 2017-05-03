building presentations
codePresentationOn: aComposite for: aMethod
	
	^ codePresentation := aComposite gemstoneMethod
		display: [ aMethod sourceString ];
		format: [ :aString | aString ];
		doItReceiver: [ aMethod inClass ];
		attachCodeExecutionActions;
		gsSelectionAct: [ :aGsPresenntation :aSymbol | |selector|  
				"selector := selectedText asSymbol."
				selector := aSymbol.
				(aGsPresenntation topezServer gtGsToolInstanceFor: #'browse')
					title: 'Senders of ...';
					methods: ((aGsPresenntation topezServer gtGsToolInstanceFor: #'find') sendersOf: selector);
					openUsing: aGsPresenntation topezServer.
				true ] 
			"transformSelection: [ :selectedText | selectedText findSelector ]"
			on: nil 
			entitled: 'Test (experimental)'