scripting
column: aBlockOrString evaluated: aBlock width: aNumber 
	self addColumn: (GtGsGlmTableColumn new 
		titleBlock: aBlockOrString; 
		computationBlock: aBlock;
		width: aNumber;
		yourself)	