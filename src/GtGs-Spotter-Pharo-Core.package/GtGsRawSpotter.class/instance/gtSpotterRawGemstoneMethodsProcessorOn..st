as yet unclassified
gtSpotterRawGemstoneMethodsProcessorOn: aStep
	"<spotterOrder: 10>"
	aStep listProcessor
		title: 'Gemstone Methods';
		itemName: [ :name | name ];
		actLogic: [ :item :step || topezOop |
			step exit.
			topezOop := self gemstoneClient todeServerOopType asInteger.
			self gemstoneClient onServerDo: [ 
				(Object _objectForOop: topezOop) gtGsBrowseTool browseImplementorsOf: item.
				true ] ];
		allCandidates: [ | topezOop |
			topezOop := self gemstoneClient todeServerOopType asInteger.
			self gemstoneClient onServerDo: [ | allSelectors |
				allSelectors := Set new.
				(Object _objectForOop: topezOop) gtGsSystemNavigation classOrganizer classes do: [ :aClass |
					allSelectors addAll: aClass selectors ].
				allSelectors asArray ] ];
		wantsToDisplayOnEmptyQuery: false	