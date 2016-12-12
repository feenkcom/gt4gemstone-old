*GtGs-Inspector-Core
gtGsInspectorItemsIn: aComposite
	<gtInspectorPresentationOrder: 0>
	
	^ aComposite fastTable
		title: 'Items';
		enableLazyLoading;
		display: [
			[(1 to: self size) collect: [ :index | 
				"TODO: log the error"
				index -> (self at: index) ]] on: Error do:[#()]];
		column: 'Index' evaluated: [ :anAssociation | 
			anAssociation key asString ] width: 50;
		column: 'Item' evaluated: [ :anAssociation | 
			anAssociation value gtGsInspectorName ];
		send: [ :anAssociation | anAssociation value ];
		when: [ self gtGsIsGemstone ]