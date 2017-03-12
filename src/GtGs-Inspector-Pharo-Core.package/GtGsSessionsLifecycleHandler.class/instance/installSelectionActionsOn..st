building actions
installSelectionActionsOn: aPresentation

	aPresentation
		selectionAct: [ :currentPresentation |
				currentPresentation selection openGemstonePlayground ] 
			entitled: 'Open Gemstone playground'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ];
		selectionAct: [ :currentPresentation |
				currentPresentation selection sessionDescription inspect ] 
			entitled: 'Inspect session description';
		selectionAct: [ :currentPresentation |
				currentPresentation selection inspect ] 
			entitled: 'Inspect client';
		selectionAct: [ :currentPresentation |
				(currentPresentation selection buildRemoteInspectorProxyFrom: 'SessionTemps') inspect ] 
			entitled: 'Inspect SessionTemps (remote)'
			condition: [ :currentPresentation | self isClientActive: currentPresentation selection ].
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
				currentPresentation selection
					logout;
					login ] 
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