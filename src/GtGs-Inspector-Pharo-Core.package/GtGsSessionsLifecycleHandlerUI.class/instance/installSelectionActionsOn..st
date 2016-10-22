building
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
			entitled: 'Inspect SessionTemps (remote)';
		selectionAct: [ :currentPresentation |
				GtGsSessionsLifecycleHandler uniqueInstance logoutAndRemove: currentPresentation selection.
				currentPresentation update ] 
			entitled: 'Logout'