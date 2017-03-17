accessing - views
classesViewForSystemDictionary: aSystemDictionary
	<glamourRemotePresentation>
	
	^ GtGsGlmListPresentation new
		display: self classesForSystemDictionaryLogic;
		format: [ :each | each asString ]
	
	
	
	