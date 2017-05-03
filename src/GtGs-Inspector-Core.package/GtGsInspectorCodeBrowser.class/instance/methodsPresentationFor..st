building presentations
methodsPresentationFor: aClass
	
	^ methodsPresentation := GtGsGlmListPresentation new
		display: [ (aClass selectors sortWithBlock: [ :a :b | a <= b ]) collect: [ :aSelector | 
			aClass compiledMethodAt: aSelector ] ];
		format: [ :aMethod | aMethod selector asString ];
		withRemoteCodeNavigationActionsForMethods