building actions
installToolbarActionsOn: aPresentation

	aPresentation
		addAction:
			(GLMPopupAction new
				action: [ :currentPresentation | 
					GtGsSessionsDescriptionsListBrick new
						on: self class availableSessionDescriptions;
						when: #createSession do: [ :aSessionDescription |
							self class newClientForSessionDescription: aSessionDescription.
							currentPresentation update ];
						yourself ]; 
				icon: Smalltalk ui icons glamorousMore;
				title: 'Create session';
				yourself)