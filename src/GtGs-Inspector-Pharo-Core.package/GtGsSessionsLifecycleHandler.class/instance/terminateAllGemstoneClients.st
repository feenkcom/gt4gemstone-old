actions api
terminateAllGemstoneClients

	self gemstoneClients do: #logout.
	gemstoneClients := OrderedCollection new. 