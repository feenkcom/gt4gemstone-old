accessing-actions
remoteExecutionSelectionActions
	^ { 
		GLMGenericAction new
				title: 'Do it and go (remote)';
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :selectedText |
						aPresentation selection: (self gemstoneClient buildRemoteInspectorProxyFrom: selectedText) ] ];  
				shortcut: $g; 
				yourself.
		(GLMGenericAction new) 
				title: 'Do it (remote)';
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :selectedText |
						self gemstoneClient performStringRemotely: selectedText ] ]; 
				keymap: PharoShortcuts current doItShortcut; 
				icon: GLMUIThemeExtraIcons glamorousSpawn;
				yourself.
		(GLMGenericAction new) 
				title: 'Inspect it (remote)'; 
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :selectedText |
						(self gemstoneClient buildRemoteInspectorProxyFrom: selectedText) ] ];  
				keymap: PharoShortcuts current inspectItShortcut; 
				icon: GLMUIThemeExtraIcons glamorousInspect;
				withSeparatorAfter;
				yourself.
		}