as yet unclassified
initializeClient: aGemstoneClient

	gemstoneClient ifNil: [ 
		gemstoneClient := aGemstoneClient ]