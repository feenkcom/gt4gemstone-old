initialization
initializeFromConfiguration: aConfiguration

	self
		title: (aConfiguration at: 'title');
		order: (aConfiguration at: 'order');
		wantsToDisplayOnEmptyQuery: (aConfiguration at: 'wantsToDisplayOnEmptyQuery');
		stepOop: (aConfiguration at: 'stepOop');
		
		"We need this to avoid printing strings. That would add ' around the string."
		itemName: [ :anItem | anItem formattedValue ];
		filter: GTFilterSubstring item: [ :filter :context | 
			self performSearchForFilter: filter inContext: context ].
	(aConfiguration includesKey: 'gsActBlockOop') ifTrue: [ 
		self actLogic: [ :anItem :aStep | self actFor: anItem in: aStep ] ]