as yet unclassified
gtSpotterGemstoneMethodsProcessorOn: aStep
	<spotterOrder: 10>
	aStep gemstoneListProcessor
		title: 'Gemstone Methods';
		itemName: [ :name | name ];
		filter: GTFilterSubstring;
		actLogic: [ :item :step || topezOop |
			step exit.
			topezOop := self gemstoneClient todeServerOopType asInteger.
			self gemstoneClient onServerDo: [ 
				(Object _objectForOop: topezOop) gtGsBrowseTool browseImplementorsOf: item.
				true ] ];
		gemstoneItems: [ :topezServer :queryString | | allSelectors |
			allSelectors := Set new.
			topezServer gtGsSystemNavigation classOrganizer classes do: [ :aClass |
				allSelectors addAll: (aClass selectors select: [ :each | 
					queryString isNil 
						ifTrue: [ true ]
						ifFalse: [ (each asLowercase findString: queryString startingAt: 1) > 0 ] ]) ].
			allSelectors asArray ];
		"gemstoneAllCandidates: [ :topezServer | | allSelectors |
				allSelectors := Set new.
				topezServer gtGsSystemNavigation classOrganizer classes do: [ :aClass |
					allSelectors addAll: aClass selectors ].
				allSelectors asArray  ];"
		gemstoneClient: self gemstoneClient;
		wantsToDisplayOnEmptyQuery: true	