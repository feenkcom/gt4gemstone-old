instance creation
newClientForSessionDescription: aSessionDescription
	| gemstoneClient |

	gemstoneClient := GtGsMinimalClient loginWith: aSessionDescription.
	self gemstoneClients add: gemstoneClient.
	^ gemstoneClient