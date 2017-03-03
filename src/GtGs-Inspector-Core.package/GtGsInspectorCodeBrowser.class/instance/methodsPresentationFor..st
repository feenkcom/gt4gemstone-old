building presentations
methodsPresentationFor: aClass
	
	^ methodsPresentation := GtGsGlmListPresentation new
		display: [ (aClass localSelectors sortWithBlock: [ :a :b | a <= b ]) collect: [ :aSelector | 
			aClass compiledMethodAt: aSelector ] ];
		format: [ :aMethod | aMethod selector asString ].