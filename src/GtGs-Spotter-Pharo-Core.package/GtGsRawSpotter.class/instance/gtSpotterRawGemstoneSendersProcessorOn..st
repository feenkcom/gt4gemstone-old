as yet unclassified
gtSpotterRawGemstoneSendersProcessorOn: aStep
	"<spotterOrder: 10>"
	aStep listProcessor
		title: 'Gemstone Senders';
		itemName: [ :name | name ];
		actLogic: [ :item :step |
			step exit.
			self gemstoneClient browseMethodFromSignature: item ];
		filter: GTFilterSubstring item: [ :filter :context || searchQuery topezOop |
			searchQuery := context text ifEmpty: [ nil ].
			searchQuery ifNotNil: [ |signatures|
				topezOop := self gemstoneClient todeServerOopType asInteger.
				signatures := self gemstoneClient onServerDo: [
					((Object _objectForOop: topezOop) gtGsSystemNavigation gtGsSendersOf: searchQuery asSymbol) collect: [ :aMethod |
						aMethod inClass name, '>>#', aMethod selector ] ].
				signatures do: [ :each | filter value: each ] ] ];
		wantsToDisplayOnEmptyQuery: false	