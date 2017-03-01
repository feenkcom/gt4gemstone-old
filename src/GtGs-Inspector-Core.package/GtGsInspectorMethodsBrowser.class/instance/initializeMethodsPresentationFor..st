initialization
initializeMethodsPresentationFor: aClass
	
	methodsPresentation := GtGsGlmListPresentation new
		display: [ aClass localSelectors ];
		format: [ :aSelector | aSelector asString ].
	methodsPresentation 
		updateForOwner: self;
		updateCache