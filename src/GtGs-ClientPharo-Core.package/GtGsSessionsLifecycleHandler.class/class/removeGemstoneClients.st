cleanup
removeGemstoneClients

	gemstoneClients ifNotNil: [ 
			"A copy is required as the loop removes the clients from the collection."
			gemstoneClients copy do: #logoutAndRemove.
			gemstoneClients := nil ]