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
				title: 'Senders of it';
				keymap: PharoShortcuts current browseSendersShortcut;
				action: [ :aPresentation |
					GtGsGemStoneActionRequest new
						arguments: { 
							aGemstoneClient todeServerOopType .  
							aPresentation gtGsSelectedOrHighligtedText asString };
						actionBlock: [ :aTopezServer :aSelectedText || aSelector |
							aSelector := aTopezServer findSelectorFor: aSelectedText.
							aSelector 
								ifNil: [ 
									aTopezServer informClient: 'No symbol matching the selector pattern found in: ''', aSelectedText, ''''.
									false ]
								ifNotNil: [
									aTopezServer gtGsBrowseTool browseSendersOf: aSelector.
									true ] ];
						executeOn: aGemstoneClient ]; 
				category: 'Code search... (remote)';
				yourself. 
		(GLMGenericAction new) 
				title: 'Implementors of it';
				keymap: PharoShortcuts current browseImplementorsShortcut;
				action: [ :aPresentation |
					GtGsGemStoneActionRequest new
						arguments: { 
							aGemstoneClient todeServerOopType . 
							aPresentation gtGsSelectedOrHighligtedText asString };
						actionBlock: [ :aTopezServer :aSelectedText || aSelector |
							aSelector := aTopezServer findSelectorFor: aSelectedText.
							aSelector
								ifNil: [ 
									aTopezServer informClient: 'No symbol matching the selector pattern found in: ''', aSelectedText, ''''.
									false ]
								ifNotNil: [ 
									aTopezServer gtGsBrowseTool browseImplementorsOf: aSelector.
									true ] ];
						executeOn: aGemstoneClient ]; 
				category: 'Code search... (remote)';
				yourself. 
		(GLMGenericAction new) 
				title: 'References to it';
				"keymap: PharoShortcuts current browseReferencesShortcut;"
				shortcut: $B;
				action: [ :aPresentation |
					GtGsGemStoneActionRequest new
						arguments: { 
							aGemstoneClient todeServerOopType . 
							aPresentation gtGsSelectedOrHighligtedText asString trimBoth };
						actionBlock: [ :aTopezServer :aClassName |
							aTopezServer gtGsBrowseTool browseReferencesTo: aClassName.
							true ];
						executeOn: aGemstoneClient ]; 
				category: 'Code search... (remote)';
				yourself. 
		}