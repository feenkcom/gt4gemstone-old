*GtGs-Inspector-Core
gtGsInspectorAItemsIn: aComposite
	<gtInspectorPresentationOrder: 0>
	
	^ aComposite fastTable
		title: 'Items';
		enableLazyLoading;
		display: [ self ];
		column: 'Index' evaluated: [ :anItem :anIndex | 
			anIndex asString ] width: 50;
		column: 'Item' evaluated: [ :anItem | 
			anItem gtGsInspectorName ];
		when: [ self gtGsIsGemstone ]