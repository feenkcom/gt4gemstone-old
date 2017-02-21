building actions
installToolbarActionsOn: aPresentation

	"aPresentation 
		addAction: (GLMGenericAction new
			action: [ Smalltalk tools browser openOnClass: self class ];
			icon: GLMUIThemeExtraIcons glamorousBrowse;
			title: 'Browse')."
	aPresentation
		addAction:
			(GLMPopupAction new
				action: [ :currentPresentation | 
					GtGsSessionsDescriptionsListBrick new
						on: self class availableSessionDescriptions;
						when: #createSession do: [ :aSessionDescription |
							self class newClientForSessionDescription: aSessionDescription ];
						yourself ]; 
				icon: Smalltalk ui icons glamorousMore;
				title: 'Create session';
				yourself).