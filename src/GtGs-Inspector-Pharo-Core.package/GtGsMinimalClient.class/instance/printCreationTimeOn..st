printing
printCreationTimeOn: aStream

	self startTime printHMSOn: aStream.
	self startTime printYMDOn: aStream withLeadingSpace: true 