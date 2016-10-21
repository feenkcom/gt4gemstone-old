building
installToolbarActionsOn: aPresentation

	aPresentation
		addAction:
			(GLMPopupAction new
				action: [ :currentPresentation | 
					GtGsSessionsDescriptionsListBrick new
						on: GtGsSessionsLifecycleHandler availableSessionDescriptions;
						when: #createSession do: [ :aSessionDescription |
							GtGsSessionsLifecycleHandler newClientForSessionDescription: aSessionDescription.
							currentPresentation update ];
						yourself ]; 
				icon: Smalltalk ui icons glamorousMore;
				title: 'Create session';
				yourself)