accessing
gemstoneClients

	^ gemstoneClients ifNil: [ gemstoneClients := OrderedCollection new ]