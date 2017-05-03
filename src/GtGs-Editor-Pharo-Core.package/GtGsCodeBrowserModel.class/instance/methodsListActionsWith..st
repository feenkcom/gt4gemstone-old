building actions
methodsListActionsWith: aGsCodeExecutor

	^ { 
		(GLMGenericAction new) 
				title: 'Remove';
				action: [ :aPresentation |
					aGsCodeExecutor removeRemoteSelector: aPresentation selection asSymbol ]; 
				icon: GLMUIThemeExtraIcons glamorousTrash;
				withSeparatorAfter;
				yourself. 
		(GLMGenericAction new) 
				title: 'Senders of...';
				action: [ :aPresentation |
					aGsCodeExecutor gemstoneClient removeRemoteSelector: aPresentation selection asSymbol ]; 
				yourself. 
		(GLMGenericAction new) 
				title: 'Implementors of...';
				action: [ :aPresentation |
					"aGsCodeExecutor gemstoneClient removeRemoteSelector: aPresentation selection asSymbol" ]; 
				yourself. 
	}