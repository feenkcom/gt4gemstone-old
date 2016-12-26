*GtGs-Inspector-Core
gtGsInspectorAOccurrencesIn: composite
	<gtInspectorPresentationOrder: 1>  
	
	^ composite fastTable
		title: 'Occurrences';
		enableLazyLoading;
		display: [ self ];
		column: 'Item' 
			evaluated: [ :anItem | anItem gtGsInspectorName];
		column: 'Occurences' 
			evaluated: [ :anItem | self occurrencesOf: anItem ]