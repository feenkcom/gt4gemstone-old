*GtGs-Inspector-Core
gtGsInspectorAItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	"Same implementation as in Collection"
	
	^ composite fastList
		title: 'Items';
		enableLazyLoading;
		display: [ self ];	
		format: [ :each | each gtGsInspectorName ];
		when: [ self gtGsIsGemstone ]