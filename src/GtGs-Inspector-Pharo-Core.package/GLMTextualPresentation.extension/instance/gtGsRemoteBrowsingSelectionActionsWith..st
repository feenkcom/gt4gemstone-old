*GtGs-Inspector-Pharo-Core
gtGsRemoteBrowsingSelectionActionsWith: aGemstoneClient
	^ { 
		(GLMGenericAction new) 
				title: 'Browse it';
				action: [ :aPresentation |
					aPresentation highlightAndDo: [ :aText |
						aGemstoneClient browseClassFrom: aText trimBoth ] ]; 
				shortcut: $b; 
				category: 'Code search... (remote)';
				yourself.
		}