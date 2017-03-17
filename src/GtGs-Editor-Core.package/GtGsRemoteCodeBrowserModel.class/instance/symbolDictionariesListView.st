accessing - views
symbolDictionariesListView
	<glamourRemotePresentation>
	
	^ GtGsGlmListPresentation new
		display: self symbolDictionariesLogic;
		format: [ :each | each asString ]
		