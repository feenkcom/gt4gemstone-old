cleanup
deleteGemstoneClients
	"self reset"
	gemstoneClients ifNotNil: [ 
			gemstoneClients do: #logout.
			gemstoneClients := nil. ].
	uniqueInstance ifNotNil: [ uniqueInstance update ].