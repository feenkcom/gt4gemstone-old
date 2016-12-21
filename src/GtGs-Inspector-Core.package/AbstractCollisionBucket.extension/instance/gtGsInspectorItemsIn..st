*GtGs-Inspector-Core
gtGsInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	"Same implementation as in Collection"
	
	^ composite list
		title: 'Items';
		display: [ self ];	
		format: [ :each | each gtGsInspectorName ];
		when: [ self gtGsIsGemstone ]