building actions
installSelectionActionsOn: aPresentation

	aPresentation
		selectionAct: [ :currentPresentation |
				currentPresentation selection openGemstonePlayground ] 
			entitled: 'Remote Playground'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ].
	aPresentation
		selectionAct: [ :currentPresentation |
			| page |
			page := GTPlayPage new
				saveContent: 'gemstoneClient';
				yourself.
			(GTPlayground new)
					act: [ currentPresentation selection openRemoteSpotter ] 
						icon: FinderUI icon 
						entitled: 'Spotter' ;
					startOn: page;
					title: 'Local Playground - ', currentPresentation selection detailedDescription;
					setBindings: {'gemstoneClient' -> currentPresentation selection} asDictionary;
					open ]
			entitled: 'Local Playground'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ].
	aPresentation
		selectionAct: [ :currentPresentation |
				currentPresentation selection openSymbolDictionariesBrowser ] 
			entitled: 'Symbol Dictionaries Browser'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ].
	aPresentation
		selectionAct: [ :currentPresentation |
				currentPresentation selection openCategoriesBrowser ] 
			entitled: 'Categories Browser'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ].
	aPresentation
		selectionAct: [ :currentPresentation |
				currentPresentation selection openRemoteSpotter ] 
			entitled: 'Spotter'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ].
	aPresentation selectionActions last withSeparatorAfter.
	aPresentation
		selectionAct: [ :currentPresentation |
				currentPresentation selection sessionDescription inspect ] 
			entitled: 'Inspect Session Description';
		selectionAct: [ :currentPresentation |
				currentPresentation selection inspect ] 
			entitled: 'Inspect Client';
		selectionAct: [ :currentPresentation |
				(currentPresentation selection buildRemoteInspectorProxyFrom: 'SessionTemps') inspect ] 
			entitled: 'Inspect SessionTemps (remote)'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ];
		selectionAct: [ :currentPresentation | |currentClient|
				currentClient := currentPresentation selection.
				currentClient class loginWith: (self duplicateSessionDescription: currentClient sessionDescription) ] 
			entitled: 'Duplicate Client'.
	aPresentation selectionActions last withSeparatorAfter.
	aPresentation
		selectionAct: [ :currentPresentation |
				currentPresentation selection commitSession ] 
			entitled: 'Commit'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ];
		selectionAct: [ :currentPresentation |
				currentPresentation selection abortSession ] 
			entitled: 'Abort'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ];
		selectionAct: [ :currentPresentation |
				currentPresentation selection logout.
				currentPresentation selection login ] 
			entitled: 'Reset'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ];
		selectionAct: [ :currentPresentation |
				currentPresentation selection logout ] 
			entitled: 'Logout'
			condition: [ :currentPresentation | currentPresentation selection 
				ifNil: [ false ]
				ifNotNil: [ :aGemstoneClient | aGemstoneClient session notNil ] ];
		selectionAct: [ :currentPresentation |
				currentPresentation selection login ] 
			entitled: 'Login'
			condition: [ :currentPresentation | currentPresentation selection 
				ifNil: [ false ]
				ifNotNil: [ :aGemstoneClient | aGemstoneClient session isNil ] ];
		selectionAct: [ :currentPresentation |
				currentPresentation selection logoutAndRemove ] 
			entitled: 'Remove'