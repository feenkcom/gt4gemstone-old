building
compose
	| clientPresentation |
	self title: self defaultTitle.
	self act: [:b | b update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Update'.
	
	clientPresentation := self table.
	clientPresentation
		title: 'Current Active Sessions';
		display: [ self gemstoneClients ];
		column: 'Name' evaluated: [ :aGemstoneClient | 
			aGemstoneClient sessionDescription name ] width: 150;
		column: 'User' evaluated: [ :aGemstoneClient | 
			aGemstoneClient sessionDescription userId ] width: 100;
		column: 'Creation' evaluated: [ :aGemstoneClient | 
			aGemstoneClient creationTimeDescription ] width: 150;
		column: 'Session ID' evaluated: [ :aGemstoneClient | 
			aGemstoneClient session identityHash asString ].	
	
	self installSelectionActionsOn: clientPresentation.
	self installToolbarActionsOn: clientPresentation.
	
	self when: GLMBrowserClosing send: #actOnBrowserClosing: to: self.