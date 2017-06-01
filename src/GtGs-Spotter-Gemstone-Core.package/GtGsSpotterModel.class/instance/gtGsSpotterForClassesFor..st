extensions
gtGsSpotterForClassesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		title: 'Classes';
		gsActLogic: [ :aClass |
			self topezServer gtGsBrowseTool browseFull: aClass name ];
		itemName: [ :aClass | aClass name ];
		allCandidates: [ 
			 self topezServer gtGsSystemNavigation classOrganizer classes ];
		wantsToDisplayOnEmptyQuery: true
		";
		filter: GTFilterSubstring;
		itemIcon: #systemIcon;
		keyBinding: $b meta;"