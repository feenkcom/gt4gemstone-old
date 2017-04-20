queries - protocol
newSendersOf: aSelector
	^ (self classOrganizer sendersOf: aSelector) at: 1