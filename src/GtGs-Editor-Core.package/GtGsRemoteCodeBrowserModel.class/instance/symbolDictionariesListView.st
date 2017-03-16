as yet unclassified
symbolDictionariesListView

	^ GtGsGlmListPresentation new
		display: [ GsSession currentSession symbolList names ]
		