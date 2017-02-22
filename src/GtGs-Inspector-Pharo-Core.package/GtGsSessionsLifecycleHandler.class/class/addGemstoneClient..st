actions
addGemstoneClient: aGemstoneClient
	(self gemstoneClients includes: aGemstoneClient) 
		ifFalse: [ self gemstoneClients add: aGemstoneClient ].
	self updateContent