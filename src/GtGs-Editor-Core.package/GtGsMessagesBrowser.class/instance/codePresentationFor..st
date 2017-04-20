as yet unclassified
codePresentationFor: aMethod
	
	^ codePresentation := GtGsGlmMethodPresentation new
		display: [ aMethod sourceString ];
		format: [ :aString | aString ];
		doItReceiver: [ aMethod inClass ];
		attachCodeExecutionActions;
		gsSelectionAct: [ :aGsPresenntation :selectedText | |selector methodRefs|  
				selector := selectedText asSymbol.
				methodRefs := Smalltalk systemNavigation newSendersOf: selector.
				GtGsMessagesBrowser new 
					title: 'Senders of ', selector, ' [', methodRefs size asString, ']';
					updateForOwner: aGsPresenntation topezServer;
					startOn: methodRefs;
					open.
				true ]
			on: nil 
			entitled: 'Test (experimental)';
		yourself
		"gsSelectionAct: [ :aGsPresenntation :aSymbol | |selector|  
				selector := selectedText asSymbol.
				selector := aSymbol.
				(aGsPresenntation topezServer gtGsToolInstanceFor: #'browse')
					title: 'Senders of ...';
					methods: ((aGsPresenntation topezServer gtGsToolInstanceFor: #'find') sendersOf: selector);
					openUsing: aGsPresenntation topezServer.
				true ] 
			transformSelection: [ :selectedText | selectedText findSelector ]
			on: nil 
			entitled: 'Test (experimental)'"