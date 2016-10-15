accessing
gemstoneClient: aGemstoneClient
	gemstoneClient := aGemstoneClient.
	self gsPresentations do: [ :aGemstonePresentation |
		aGemstonePresentation gemstoneClient: gemstoneClient. ]