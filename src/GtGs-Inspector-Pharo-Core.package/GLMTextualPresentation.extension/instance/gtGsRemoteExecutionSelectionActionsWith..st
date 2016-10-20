*GtGs-Inspector-Pharo-Core
gtGsRemoteExecutionSelectionActionsWith: aGsCodeExecutor
	^ { 
		GLMGenericAction new
				title: 'Do it and go (remote)';
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :aText |
						aPresentation selection: (aGsCodeExecutor buildRemoteInspectorProxyFrom: aText) ] ];  
				shortcut: $g; 
				yourself.
		(GLMGenericAction new) 
				title: 'Do it (remote)';
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :aText |
						aGsCodeExecutor performStringRemotely: aText ] ]; 
				keymap: PharoShortcuts current doItShortcut; 
				icon: GLMUIThemeExtraIcons glamorousSpawn;
				yourself.
		(GLMGenericAction new) 
				title: 'Inspect it (remote)'; 
				action: [ :aPresentation |
					self halt.
					aPresentation highlightAndDo: [ :aText |
						(aGsCodeExecutor buildRemoteInspectorProxyFrom: aText) inspect ] ];  
				keymap: PharoShortcuts current inspectItShortcut; 
				icon: GLMUIThemeExtraIcons glamorousInspect;
				withSeparatorAfter;
				yourself.
		}