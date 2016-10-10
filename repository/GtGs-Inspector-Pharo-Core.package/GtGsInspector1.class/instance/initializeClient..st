initialization
initializeClient: aGemstoneClient

	gemstoneClient ifNil: [ 
		gemstoneClient := aGemstoneClient ]