as yet unclassified
gtSpotterGemstoneMethodsProcessorOn: aStep
	<spotterOrder: 10>
	aStep gemstoneListProcessor
		title: (self formatProcessorTitle: 'Methods');
		itemName: [ :name | name ];
		filter: GTFilterSubstring;
		actLogic: [ :item :step || topezOop |
			step exit.
			topezOop := self gemstoneClient todeServerOopType asInteger.
			self gemstoneClient onServerDo: [ 
				(Object _objectForOop: topezOop) gtGsBrowseTool browseImplementorsOf: item.
				true ] ];
		gemstoneItems: [ :topezServer :queryString | 
			| allSelectors formattedQuery |
			allSelectors := Set new.
			formattedQuery := queryString ifNotNil: [ queryString asLowercase ].
			topezServer gtGsSystemNavigation classOrganizer classes do: [ :aClass |
				allSelectors addAll: (aClass selectors select: [ :each | 
					formattedQuery isNil 
						ifTrue: [ true ]
						ifFalse: [ (each asLowercase findString: formattedQuery startingAt: 1) > 0 ] ]) ].
			allSelectors asArray ];
		"gemstoneAllCandidates: [ :topezServer | | allSelectors |
				allSelectors := Set new.
				topezServer gtGsSystemNavigation classOrganizer classes do: [ :aClass |
					allSelectors addAll: aClass selectors ].
				allSelectors asArray  ];"
		gemstoneClient: self gemstoneClient;
		wantsToDisplayOnEmptyQuery: true	