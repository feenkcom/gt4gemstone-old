*GtGs-Inspector-Core
gtGsInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	
	^ composite list
		title: 'Items x';
		display: [ self ];	
		format: [ :each | each gtGsInspectorName ];
		when: [ self gtGsIsGemstone ]