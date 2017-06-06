analyzing
groupedEventsPerSession
	^ GtGsLogSequentialSignalsAnalyzer new
		groupedEventsPerSessionFor: recordings
		