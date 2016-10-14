scripting
column: aBlockOrString evaluated: aBlock
	self addColumn: (GtGsGlmTableColumn new 
		titleBlock: aBlockOrString; 
		computationBlock: aBlock)