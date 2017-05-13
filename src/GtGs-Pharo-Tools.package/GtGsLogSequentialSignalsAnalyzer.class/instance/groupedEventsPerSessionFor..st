actions
groupedEventsPerSessionFor: recordings
	
	sessionStacks := Dictionary new.
	recordings withIndexDo: [ :aSignal :anIndex |
		aSignal 
			acceptAnalyzer: self 
			withData: { 'index' -> anIndex. 'recordings' -> recordings} asDictionary  ].
	^ sessionStacks values collect: #last
		