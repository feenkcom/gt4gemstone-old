*GtGs-Inspector-Core
gtGsInspectorItemsIn: aComposite
	<gtInspectorPresentationOrder: 0>
	self flag: 'Remove this pragma when the inspector can use pragmas to find presentations'.
	^ aComposite fastTable
		title: 'Items';
		enableLazyLoading;
		display: [ self ];
			"[(1 to: self size) collect: [ :index | 
				self flag: 'log the error'.
				index -> (self at: index) ]] on: Error do:[#()]];"
		column: 'Index' evaluated: [ :item :index | 
			index asString ] width: 50;
		column: 'Item' evaluated: [ :item | 
			item gtGsInspectorName ];
		"send: [ :anAssociation | anAssociation value ];"
		when: [ self gtGsIsGemstone ]