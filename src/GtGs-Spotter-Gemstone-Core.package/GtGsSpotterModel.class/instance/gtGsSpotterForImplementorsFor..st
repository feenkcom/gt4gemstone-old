extensions
gtGsSpotterForImplementorsFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		title: 'Implementors';
		itemName: [ :aMethod | aMethod inClass name, '>>#', aMethod selector ];
		searchCandidates: [ :queryString |
			topezServer gtGsSystemNavigation gtGsImplementorsOf: queryString asSymbol ];
		gsActLogic: [ :aMethod |
			self topezServer gtGsBrowseTool browseFullMethod: aMethod ];
		wantsToDisplayOnEmptyQuery: false
		
		";
		filter: GTFilterSubstring;
		itemIcon: #systemIcon;
		keyBinding: $b meta;"