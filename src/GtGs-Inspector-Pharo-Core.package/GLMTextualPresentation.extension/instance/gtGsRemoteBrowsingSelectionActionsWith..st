*GtGs-Inspector-Pharo-Core
gtGsRemoteBrowsingSelectionActionsWith: aGemstoneClient
	^ { 
		(GLMGenericAction new) 
				title: 'Browse it';
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :aText |
						aGemstoneClient browseClassFrom: aText trimBoth ] ]; 
				keymap: PharoShortcuts current browseShortcut; 
				category: 'Code search... (remote)';
				yourself.
		(GLMGenericAction new) 
				title: 'Senders of...';
				keymap: PharoShortcuts current browseSendersShortcut;
				action: [ :aPresentation |
					GtGsGemStoneActionRequest new
						arguments: { aGemstoneClient todeServerOopType . aPresentation selectedText asString findSelector };
						actionBlock: [ :aTopezServer :aSelector ||methodRefs|  
							"selector := aSymbol copyFrom: 2 to: aSymbol size."
  							methodRefs := (Smalltalk systemNavigation newSendersOf: aSelector)
   						 		"collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ]".
							GtGsMessagesBrowser new 
								title: 'Senders of ', aSelector, ' [', methodRefs size asString, ']';
								updateForOwner: aTopezServer;
								startOn: methodRefs;
								open.
							true ];
						executeOn: aGemstoneClient ]; 
				"action: [ :aPresentation |
					aGemstoneClient requestTool: (GtGsToolSpecification new
						toolId: #browse;
						arguments: { aPresentation selection asString findSelector};
						contentBlock: [ :aBrowserTool :aTopezServer :arguments ||selector|  
							selector := arguments first.
							(aTopezServer gtGsToolInstanceFor: #'browse') 
								title: 'Senders of ...';
								methods: ((aTopezServer gtGsToolInstanceFor: #'find') sendersOf: selector);
								openUsing: aTopezServer.
							true ]) ]; "
				category: 'Code search... (remote)';
				yourself. 
		(GLMGenericAction new) 
				title: 'Implementors of...';
				keymap: PharoShortcuts current browseImplementorsShortcut;
				action: [ :aPresentation |
					"aGsCodeExecutor gemstoneClient removeRemoteSelector: aPresentation selection asSymbol" ]; 
				category: 'Code search... (remote)';
				yourself. 
		(GLMGenericAction new) 
				title: 'References to it';
				"keymap: PharoShortcuts current browseReferencesShortcut;"
				shortcut: $B;
				action: [ :aPresentation |
					"aGsCodeExecutor gemstoneClient removeRemoteSelector: aPresentation selection asSymbol" ]; 
				category: 'Code search... (remote)';
				yourself. 
		}