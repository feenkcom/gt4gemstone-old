*GtGs-Spotter-Gemstone-Core
gtGsSpotterItemsIn: aComposite
	
	^ aComposite fastList
		title: 'Items';
		enableLazyLoading;
		display: [ self ];
		format: [ :anItem | anItem gtGsInspectorName ]