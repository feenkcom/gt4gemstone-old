extensions
gtGsSpotterForClassesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		title: 'Classes';
		itemName: [ :aClass | aClass name ];
		allCandidates: [ 
			 self topezServer gtGsSystemNavigation classOrganizer classes ]";
		filter: GTFilterSubstring;
		itemIcon: #systemIcon;
		keyBinding: $b meta;
		wantsToDisplayOnEmptyQuery: false"