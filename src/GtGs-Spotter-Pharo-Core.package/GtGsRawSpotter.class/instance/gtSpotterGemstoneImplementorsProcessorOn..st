as yet unclassified
gtSpotterGemstoneImplementorsProcessorOn: aStep
	<spotterOrder: 10>
	aStep gemstoneListProcessor
		title: (self formatProcessorTitle: 'Implementors');
		itemName: [ :name | name ];
		gemstoneItems: [ :topezServer :queryString | 
			(topezServer gtGsSystemNavigation gtGsImplementorsOf: queryString asSymbol) collect: [ :aMethod |
				aMethod inClass name, '>>#', aMethod selector ] ];
		gemstoneClient: self gemstoneClient;
		wantsToDisplayOnEmptyQuery: false	