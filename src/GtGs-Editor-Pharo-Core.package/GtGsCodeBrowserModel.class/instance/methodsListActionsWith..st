building actions
methodsListActionsWith: aGsCodeExecutor

	^ { 
		GLMGenericAction new
				title: 'Senders of it';
				keymap: PharoShortcuts current browseSendersShortcut;
				action: [ :aPresentation |
					GtGsGemStoneActionRequest new
						arguments: { 
							aGsCodeExecutor gemstoneClient todeServerOopType .  
							aPresentation selection asSymbol  };
						actionBlock: [ :aTopezServer :aMethodSelector |
							aTopezServer gtGsBrowseTool browseSendersOf: aMethodSelector.
							true ];
						executeOn: aGsCodeExecutor gemstoneClient ]; 
				yourself. 
		GLMGenericAction new
				title: 'Implementors of it';
				keymap: PharoShortcuts current browseImplementorsShortcut;
				action: [ :aPresentation |
					GtGsGemStoneActionRequest new
						arguments: { 
							aGsCodeExecutor gemstoneClient todeServerOopType .  
							aPresentation selection asSymbol  };
						actionBlock: [ :aTopezServer :aMethodSelector |
							aTopezServer gtGsBrowseTool browseImplementorsOf: aMethodSelector.
							true ];
						executeOn: aGsCodeExecutor gemstoneClient ]; 
				yourself.  
		GLMGenericAction new 
				title: 'Remove';
				action: [ :aPresentation |
					aGsCodeExecutor removeRemoteSelector: aPresentation selection asSymbol ]; 
				icon: GLMUIThemeExtraIcons glamorousTrash;
				withSeparatorAfter;
				yourself. 
	}