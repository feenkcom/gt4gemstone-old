*GtGs-Inspector-Core
gtGsInspectorItemsIn: aComposite

	^ aComposite table
		title: 'Items';
		display: [
			self flag: 'This will not work for the optimized version of this presentation.
			A generator should be used that can return key-value pairs on demand.'.
			[(1 to: self size) collect: [ :index | 
				self flag: 'log the error'.
				index -> (self at: index) ]] on: Error do:[#()]];
		column: 'Index' evaluated: [ :anAssociation | 
			anAssociation key asString ] width: 50;
		column: 'Item' evaluated: [ :anAssociation | 
			anAssociation value gtGsInspectorName ];
		send: [ :anAssociation | anAssociation value ];
		when: [ self gtGsIsGemstone ]