actions api
terminateAllGemstoneClients

	self gemstoneClients do: [ :aGemstoneClient |
		self logoutAndRemove: aGemstoneClient ]