extensions
gtGsSpotterForClassesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		title: 'Classes';
		itemName: [ :aClass | aClass name ];
		allCandidates: [ 
			 self topezServer gtGsSystemNavigation classOrganizer classes ];
		gsActLogic: [ :aClass |
			self topezServer gtGsBrowseTool browseFull: aClass name ];
		wantsToDisplayOnEmptyQuery: true
		";
		filter: GTFilterSubstring;
		itemIcon: #systemIcon;
		keyBinding: $b meta;"