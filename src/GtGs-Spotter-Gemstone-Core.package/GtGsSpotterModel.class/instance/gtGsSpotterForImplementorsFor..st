extensions
gtGsSpotterForImplementorsFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		title: 'Implementors';
		itemName: [ :aMethod | aMethod inClass name, '>>#', aMethod selector ];
		searchCandidates: [ :filter :queryString |
			topezServer gtGsSystemNavigation gtGsImplementorsOf: queryString asSymbol ];
		wantsToDisplayOnEmptyQuery: false
		
		";
		filter: GTFilterSubstring;
		itemIcon: #systemIcon;
		keyBinding: $b meta;"