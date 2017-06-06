*GtGs-Spotter-Pharo-Core
gtGsSpotterForGemstoneClientsFor: aStep

<spotterOrder: 10>
	^ aStep listProcessor
		title: 'Gemstone sessions';
		items: [ GtGsSessionsLifecycleHandler gemstoneClients ];
		itemName: [ :aGemstoneClient | aGemstoneClient detailedDescription ];
		filter: GTFilterSubstrings;
		actLogic: [ :aGemstoneClient :step |
			step exit.
			GtGsSessionsLifecycleHandler open.
			GtGsSessionsLifecycleHandler uniqueInstance selectClient: aGemstoneClient ];
		wantsToDisplayOnEmptyQuery: false