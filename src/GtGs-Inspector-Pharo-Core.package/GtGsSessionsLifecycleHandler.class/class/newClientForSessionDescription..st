instance creation
newClientForSessionDescription: aSessionDescription
	| gemstoneClient |

	gemstoneClient := GtGsBareClient loginWith: aSessionDescription.
	self gemstoneClients add: gemstoneClient.
	^ gemstoneClient