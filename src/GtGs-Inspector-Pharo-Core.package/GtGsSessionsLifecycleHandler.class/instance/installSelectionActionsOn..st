building actions
installSelectionActionsOn: aPresentation

	aPresentation
		selectionAct: [ :currentPresentation |
				currentPresentation selection openGemstonePlayground ] 
			entitled: 'Open Gemstone playground';
		selectionAct: [ :currentPresentation |
				currentPresentation selection sessionDescription inspect ] 
			entitled: 'Inspect session description';
		selectionAct: [ :currentPresentation |
				currentPresentation selection performStringRemotelyAndInspect: 'SessionTemps' ] 
			entitled: 'Inspect SessionTemps (remote)'.
	aPresentation selectionActions last withSeparatorAfter.
	aPresentation
		selectionAct: [ :currentPresentation |
				currentPresentation selection commitSession ] 
			entitled: 'Commit';
		selectionAct: [ :currentPresentation |
				currentPresentation selection abortSession ] 
			entitled: 'Abort';
		selectionAct: [ :currentPresentation |
				self logoutAndRemove: currentPresentation selection.
				currentPresentation update ] 
			entitled: 'Logout'