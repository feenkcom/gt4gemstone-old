updating
updatePresentations
	| aComposite |
	aComposite := GtGsGlmCompositePresentation new.
	targetObject 
		gtGsInspectorPresentationsIn: aComposite
		inContext: self.
	
	aComposite presentations do: [ :each | 
		each 
			proxyOwner: self;
			updateForwarder;
			updateUninitializedBlocks;
			updateCache ].

	presentations := aComposite presentations