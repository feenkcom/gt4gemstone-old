instance creation
newClientForSessionDescription: aSessionDescription
	| gemstoneClient |

	gemstoneClient := GtGsMinimalClient loginWith: aSessionDescription.
	self uniqueInstance gemstoneClients add: gemstoneClient.
	^ gemstoneClient