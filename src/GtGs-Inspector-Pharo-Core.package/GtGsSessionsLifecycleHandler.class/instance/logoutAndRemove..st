actions api
logoutAndRemove: aGemstoneClient
	self closeAllRemoteWindowsFor: aGemstoneClient.
	aGemstoneClient logout.
	self gemstoneClients remove: aGemstoneClient