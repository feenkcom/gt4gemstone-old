initialization
initializeMethodsFor: aClass
	
	methodsPresentation := GtGsGlmListPresentation new
		display: [ aClass withAllSuperclasses localSelectors ];
		format: [ :aSelector | aSelector asString ].
	methodsPresentation 
		updateForOwner: self;
		updateCache