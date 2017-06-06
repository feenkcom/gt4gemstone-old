*GtGs-Spotter-Gemstone-Core
gtGsSpotterClassesIn: aComposite
	
	^ aComposite fastList
		title: 'Items';
		enableLazyLoading;
		display: [ self ];
		format: [ :anItem | anItem name asString ]