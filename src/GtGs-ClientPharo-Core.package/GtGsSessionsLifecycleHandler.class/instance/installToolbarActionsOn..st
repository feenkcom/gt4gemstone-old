building actions
installToolbarActionsOn: aPresentation

	aPresentation
		addAction:
			(GLMPopupAction new
				action: [ :currentPresentation | 
					GtGsSessionsDescriptionsListBrick new
						on: self class availableSessionDescriptions;
						when: #createSession do: [ :aSessionDescription |
							self class newClientForSessionDescription: aSessionDescription ];
						when: #inspectDescription do: [ :aSessionDescription |
							aSessionDescription inspect ];
						when: #removeDescription do: [ :aSessionDescription |
							(self confirm: 'Are you sure you want to remove the session description?')
								ifTrue: [ self deleteSessionDescription: aSessionDescription ] ];
						yourself ]; 
				icon: Smalltalk ui icons glamorousTable;
				title: 'Show the list of available session descriptions.';
				yourself).
	
	aPresentation 
		addAction: (GLMGenericAction new
			action: [ self openCreateSessionDescriptionWindow ];
			title: 'Create session description and login').
	
	aPresentation act: [ self class logoutGemstoneClients ] entitled: 'Logout from all sessions'.
	aPresentation act: [ self class removeGemstoneClients ] entitled: 'Remove all sessions'.