accessing - views
classesViewForSystemDictionary: aSystemDictionary
	<glamourRemotePresentation>
	
	^ GtGsGlmListPresentation new
		display: [ self classesForSystemDictionaryLogic value: aSystemDictionary ] ;
		format: [ :each | each asString ]
	
	
	
	