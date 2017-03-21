building actions
methodsListActionsWith: aGsCodeExecutor

	^ { 
		(GLMGenericAction new) 
				title: 'Remove';
				action: [ :aPresentation |
					aGsCodeExecutor removeRemoteSelector: aPresentation selection asSymbol ]; 
				icon: GLMUIThemeExtraIcons glamorousTrash;
				yourself. 
	}