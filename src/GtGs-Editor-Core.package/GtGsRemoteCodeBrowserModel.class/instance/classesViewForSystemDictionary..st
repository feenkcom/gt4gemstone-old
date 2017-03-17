accessing - views
classesViewForSystemDictionary: aSystemDictionary
	
	^ GtGsGlmListPresentation new
		display: self classesForSystemDictionaryLogic;
		format: [ :each | each asString ]
	
	
	
	