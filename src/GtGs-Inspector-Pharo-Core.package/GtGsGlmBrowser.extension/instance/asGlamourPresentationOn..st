*GtGs-Inspector-Pharo-Core
asGlamourPresentationOn: aComposite 

	self glamourPresentation: self instantiateGlamourPresentation.
	
	aComposite custom: self glamourPresentation.
	self setGlamourPresentationAttributesFor: self glamourPresentation.
	^ self glamourPresentation