as yet unclassified
gtSpotterGemstoneClassesProcessorOn: aStep
	<spotterOrder: 1>
	aStep gemstoneListProcessor
		title: 'Classes';
		itemName: [ :name | name ];
		gemstoneItemName: [ :aClass | aClass name ];
		gemstoneAllCandidates: [ :topezServer | topezServer gtGsSystemNavigation classOrganizer classes ];
		withGemstoneFilter;
		wantsToDisplayOnEmptyQuery: true	