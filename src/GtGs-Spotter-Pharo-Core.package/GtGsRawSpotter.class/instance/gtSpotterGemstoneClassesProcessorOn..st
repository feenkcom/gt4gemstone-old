as yet unclassified
gtSpotterGemstoneClassesProcessorOn: aStep
	<spotterOrder: 5>
	aStep gemstoneListProcessor
		title: 'Gemstone Classes';
		itemName: [ :name | name ];
		actLogic: [ :item :step |
			step exit.
			self gemstoneClient browseClassFrom: item ];
		gemstoneAllCandidates: [ :topezServer | topezServer gtGsSystemNavigation classOrganizer classes ];
		gemstoneItemName: [ :aClass | aClass name ];
		gemstoneClient: self gemstoneClient;
		wantsToDisplayOnEmptyQuery: true	