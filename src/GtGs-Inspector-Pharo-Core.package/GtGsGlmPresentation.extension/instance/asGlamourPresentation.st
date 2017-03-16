*GtGs-Inspector-Pharo-Core
asGlamourPresentation
	| gsPresentationOopType |
	
	self glamourPresentation: self instantiateGlamourPresentation.
	
	gsPresentationOopType := self selfForwarderOop gciResultToGsOopType: self gemstoneClient session.
	self gemstoneClient session registerClientObjectForwarderOopType: gsPresentationOopType for: self.
	
	self setGlamourPresentationAttributesFor: self glamourPresentation.
	^ self glamourPresentation