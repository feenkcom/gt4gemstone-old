*GtGs-Inspector-Core
gtGsInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	
	^ composite fastList
		title: 'Items';
		enableLazyLoading;
		display: [ self ];	
		format: [ :each | each gtGsInspectorName ];
		when: [ self gtGsIsGemstone ]