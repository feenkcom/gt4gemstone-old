api - pharo
linkWithGemstone
	| gsPresentationOopType |
	
	gsPresentationOopType := selfForwarderOop gciResultToGsOopType: self gemstoneClient session.
	self gemstoneClient session registerClientObjectForwarderOopType: gsPresentationOopType for: self.