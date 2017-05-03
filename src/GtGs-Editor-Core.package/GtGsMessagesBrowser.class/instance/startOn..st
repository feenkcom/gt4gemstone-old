opening
startOn: aMethodsList

	self targetObject: aMethodsList. 
	(self methodsPresentationOn: GtGsGlmCompositePresentation new for: aMethodsList)
		updateForOwner: self;
		updateCache