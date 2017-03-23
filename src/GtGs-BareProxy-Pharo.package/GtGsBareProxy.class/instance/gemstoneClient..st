accessing
gemstoneClient: aGemstoneClient
	gemstoneClient ifNotNil: [ 
		Error signal: 'Cannot change the gemstone client associated with a proxy object.' ].
	gemstoneClient := aGemstoneClient