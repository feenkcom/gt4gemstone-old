initialization
initializeMethodsPresentationFor: aClass
	
	methodsPresentation := GtGsGlmListPresentation new
		display: [ aClass localSelectors collect: [ :aSelector | 
			aClass compiledMethodAt: aSelector ] ];
		format: [ :aMethod | aMethod selector asString ].
	methodsPresentation 
		updateForOwner: self;
		updateCache