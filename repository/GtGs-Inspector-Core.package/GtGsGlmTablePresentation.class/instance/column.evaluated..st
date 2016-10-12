scripting
column: aBlockOrString evaluated: aBlock
	self addColumn: (GtGsGlmTableColumn new 
		title: aBlockOrString; 
		computationBlock: aBlock)