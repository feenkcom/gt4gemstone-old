*GtGs-Inspector-Core
gtGsInspectorItemsIn: aComposite
	<gtInspectorPresentationOrder: 0>
	self flag: 'Remove this pragma when the inspector can use pragmas to find presentations'.
	^ aComposite lazyTable
		title: 'Items';
		enableLazyLoading;
		display: [
			[(1 to: self size) collect: [ :index | 
				self flag: 'log the error'.
				index -> (self at: index) ]] on: Error do:[#()]];
		column: 'Index' evaluated: [ :anAssociation | 
			anAssociation key asString ] width: 50;
		column: 'Item' evaluated: [ :anAssociation | 
			anAssociation value gtGsInspectorName ];
		send: [ :anAssociation | anAssociation value ];
		when: [ self gtGsIsGemstone ]