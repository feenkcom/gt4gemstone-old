*GtGs-Inspector-Pharo-Core
gtGsRemoteExecutionSelectionActionsWith: aGsCodeExecutor
	^ { 
		(GLMGenericAction new) 
				title: 'Do it (remote)';
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :aText |
						aGsCodeExecutor evaluateStringRemotely: aText ] ]; 
				keymap: PharoShortcuts current doItShortcut; 
				icon: GLMUIThemeExtraIcons glamorousSpawn;
				yourself.
		(GLMGenericAction new) 
				title: 'Print it (remote)';
				action: [ :aPresentation |
					aPresentation gtGsRemotePrintItWith: aGsCodeExecutor ]; 
				keymap: PharoShortcuts current printItShortcut; 
				icon: GLMUIThemeExtraIcons glamorousSpawn;
				yourself.
		(GLMGenericAction new) 
				title: 'Inspect it (remote)'; 
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :aText |
						(aGsCodeExecutor buildRemoteInspectorProxyFrom: aText) inspect ] ];  
				keymap: PharoShortcuts current inspectItShortcut; 
				icon: GLMUIThemeExtraIcons glamorousInspect;
				yourself.
				
		(GLMGenericAction new) 
				title: 'Debug it (remote)';
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :aText |
						aGsCodeExecutor debugStringRemotely: aText ] ]; 
				keymap: PharoShortcuts current debugItShortcut; 
				icon: GLMUIThemeExtraIcons glamorousBug;
				withSeparatorAfter;
				yourself.
		}