scripting
column: aBlockOrString evaluated: aBlock width: aNumber 
	self addColumn: (GtGsGlmTableColumn new 
		title: aBlockOrString; 
		computation: aBlock;
		width: aNumber;
		yourself)	