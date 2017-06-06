settings
settingsOn: aBuilder 
	<systemsettings>	
	(aBuilder group: #gt4gemstone)
		parent: #tools;
		label: 'GT4GemStone';
		with: [ 
			(aBuilder pickOne: #clientType)
				target: self;
				default: UITheme standardThemeClass;
				order: 1;
				domainValues: self availableClientTypes;
				getSelector: #defaultClientType;
				setSelector: #defaultClientType:; 	
				description: 'The client type used by the Session Manager when creating a new connection.' translated;
				label: 'Client type' ]