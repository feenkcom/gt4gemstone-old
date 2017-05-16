as yet unclassified
gtSpotterRawGemstoneClassesProcessorOn: aStep
	"<spotterOrder: 5>"
	aStep listProcessor
		title: 'Gemstone Classes';
		itemName: [ :name | name ];
		actLogic: [ :item :step |
			step exit.
			self gemstoneClient browseClassFrom: item ];
		allCandidates: [ | topezOop |
			topezOop := self gemstoneClient todeServerOopType asInteger.
			self gemstoneClient onServerDo: [  
				(Object _objectForOop: topezOop) gtGsSystemNavigation classOrganizer classes asArray collect: [ :aClass |
					aClass name ] ] ];
		wantsToDisplayOnEmptyQuery: false	