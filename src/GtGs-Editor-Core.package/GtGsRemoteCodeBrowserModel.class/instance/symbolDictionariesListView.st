as yet unclassified
symbolDictionariesListView
	<glamourRemotePresentation>
	
	^ GtGsGlmListPresentation new
		display: [ GsSession currentSession symbolList names ]
		