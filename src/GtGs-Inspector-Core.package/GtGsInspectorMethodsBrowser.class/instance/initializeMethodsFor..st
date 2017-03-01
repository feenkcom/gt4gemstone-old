initialization
initializeMethodsFor: aClass
	
	methodsPresentation := GtGsGlmListPresentation new
		title: [ 'Source' ];
		display: [ aClass withAllSuperclasses localSelectors ];
		format: [ :aSelector | aSelector asString ].
	methodsPresentation updateForOwner: self