*GtGs-Inspector-Pharo-Core
gtGsMethodCodeActionsWith: aGsCodeExecutor
	^ { 
		(GLMGenericAction new) 
				title: 'Save';
				action: [ :aPresentation |
					(aGsCodeExecutor compileRemoteMethodCode: aPresentation text asString)
						ifTrue: [ aPresentation clearUserEdits ] ]; 
				keymap: PharoShortcuts current acceptShortcut; 
				icon: GLMUIThemeExtraIcons glamorousAccept;
				yourself.
		"(GLMGenericAction new) 
				title: 'Cancel'; 
				action: [ :aPresentation |
					aPresentation hasUnacceptedEdits ifTrue: [  
						(self confirm:
'This action will cancel your changes.
Is it OK to cancel changes?' translated) ifTrue: [
							aPresentation clearUserEdits ] ]  ];  
				keymap: PharoShortcuts current cancelShortcut; 
				icon: GLMUIThemeExtraIcons glamorousCancel;
				withSeparatorAfter;
				yourself."
		}