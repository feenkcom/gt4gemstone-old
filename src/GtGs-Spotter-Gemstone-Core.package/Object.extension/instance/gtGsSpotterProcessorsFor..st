*GtGs-Spotter-Gemstone-Core
gtGsSpotterProcessorsFor: aSpotterStep
	| objectClass spotterSelectors |
	
	objectClass := Reflection classOf: self.
	spotterSelectors := objectClass allSelectors select: [ :aSelector ||aGsMethod|
		aGsMethod := objectClass gtGsLookupSelector: aSelector.
		(aGsMethod sourceString includesString: '<spotterOrder:') and: [ 
			(aGsMethod selector beginsWith: 'gtGsSpotter') 
				or: [ aGsMethod selector beginsWith: 'gtSpotter' ] ] ].
	spotterSelectors := spotterSelectors asSet.
	spotterSelectors remove: #gtGsSpotterProcessorsFor: ifAbsent: [].
	
	spotterSelectors := spotterSelectors sortWithBlock: [ :aSelector : anotherSelector |
		aSelector < anotherSelector ].
	
	spotterSelectors do: [ :aSelector | 
		self perform: aSelector withArguments: { aSpotterStep } ]