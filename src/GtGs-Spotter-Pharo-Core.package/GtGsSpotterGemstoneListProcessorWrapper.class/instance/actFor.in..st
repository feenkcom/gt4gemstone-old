actions
actFor: anItem in: aStep

	aStep exit.
	self gemstoneClient 
		send: #performGsActOnActionFor: 
		to: self stepOopType
		withArgs: {(self gemstoneClient session asOopType: anItem selfOop)}