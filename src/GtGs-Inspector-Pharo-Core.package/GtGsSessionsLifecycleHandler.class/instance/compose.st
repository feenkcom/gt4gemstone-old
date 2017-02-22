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
			self formatString: aGemstoneClient sessionDescription name for: aGemstoneClient ] width: 150;
		column: 'User' evaluated: [ :aGemstoneClient | 
			self formatString: aGemstoneClient sessionDescription userId for: aGemstoneClient ] width: 100;
		column: 'Login time' evaluated: [ :aGemstoneClient | 
			self formatString: aGemstoneClient creationTimeDescription  for: aGemstoneClient ] width: 150;
		column: 'Session ID' evaluated: [ :aGemstoneClient | 
			self formatString: aGemstoneClient sessionHashDescription for: aGemstoneClient  ].	
	
	self installSelectionActionsOn: clientPresentation.
	self installToolbarActionsOn: clientPresentation.
	
	self when: GLMBrowserClosing send: #actOnBrowserClosing: to: self.