actions
removeGemstoneClient: aGemstoneClient
	self gemstoneClients remove: aGemstoneClient 
		ifAbsent: [ ^ self inform: 'Missing client. Cannot be removed from the session handler.' ].
	self updateContent