building
installSelectionActionsOn: aPresentation

	aPresentation
		selectionAct: [ :currentPresentation |
				(GtGsPlayground forGemstoneClient: currentPresentation selection) openEmpty ] 
			entitled: 'Open Gemstone playground';
		selectionAct: [ :currentPresentation |
				currentPresentation selection sessionDescription inspect ] 
			entitled: 'Inspect session description';
		selectionAct: [ :currentPresentation |
				currentPresentation selection performStringRemotelyAndInspect: 'SessionTemps' ] 
			entitled: 'Inspect SessionTemps (remote)';
		selectionAct: [ :currentPresentation |
				self closeAllRemoteWindowsFor: currentPresentation selection.
				GtGsSessionsLifecycleHandler uniqueInstance logoutAndRemove: currentPresentation selection.
				currentPresentation update ] 
			entitled: 'Logout'