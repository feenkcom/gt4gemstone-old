scripting
column: aBlockOrString evaluated: aBlock width: aNumber 
	self addColumn: (GtGsGlmTableColumn new 
		title: aBlockOrString; 
		computationBlock: aBlock;
		width: aNumber;
		yourself)	