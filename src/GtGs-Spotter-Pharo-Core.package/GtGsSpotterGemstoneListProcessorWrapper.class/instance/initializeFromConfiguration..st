initialization
initializeFromConfiguration: aConfiguration

	self
		title: (aConfiguration at: 'title');
		order: (aConfiguration at: 'order');
		stepOop: (aConfiguration at: 'stepOop');
		"We need this to avoid printing strings. That would add ' around the string."
		itemName: [ :anItem | anItem ];
		filter: GTFilterSubstring item: [ :filter :context | 
			self performSearchForFilter: filter inContext: context ]