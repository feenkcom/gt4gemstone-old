*GtGs-Inspector-Pharo-Core
asGlamourPresentationOn: aComposite 
	| gsPresentationOopType |
	
	self glamourPresentation: self instantiateGlamourPresentation.
	
	gsPresentationOopType := self selfForwarderOop gciResultToGsOopType: self gemstoneClient session.
	self gemstoneClient session registerClientObjectForwarderOopType: gsPresentationOopType for: self.
	
	aComposite custom: self glamourPresentation.
	self setGlamourPresentationAttributesFor: self glamourPresentation.
	^ self glamourPresentation