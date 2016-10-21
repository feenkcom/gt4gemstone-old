as yet unclassified
terminateAllGemstoneClients

	self gemstoneClients do: [ :aGemstoneClient |
		self logoutAndRemove: aGemstoneClient ]