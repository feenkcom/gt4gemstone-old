updating
updatePresentations
	| aComposite |
	aComposite := GtGsGlmCompositePresentation new.
	targetObject 
		gtGsInspectorPresentationsIn: aComposite
		inContext: self.
	
	aComposite presentations do: [ :each | 
		each updateForOwner: self  ].

	presentations := aComposite presentations