building
compose
	| listPresentation |
	self title: self defaultTitle.
	self act: [:b | b update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Update'.
	
	listPresentation := self list.
	listPresentation
		title: 'Current Active Sessions';
		display: [ GtGsSessionsLifecycleHandler uniqueInstance gemstoneClients ];
		format: #detailedDescription.
	
	self installSelectionActionsOn: listPresentation.
	self installToolbarActionsOn: listPresentation.