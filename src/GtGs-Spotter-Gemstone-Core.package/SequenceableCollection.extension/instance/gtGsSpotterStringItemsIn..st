*GtGs-Spotter-Gemstone-Core
gtGsSpotterStringItemsIn: aComposite
	
	^ aComposite fastList
		title: 'Items';
		enableLazyLoading;
		display: [ self ];
		format: [ :anItem | anItem ]