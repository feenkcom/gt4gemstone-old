cleanup
logoutGemstoneClients

	gemstoneClients ifNotNil: [ 
			gemstoneClients do: #logout ]