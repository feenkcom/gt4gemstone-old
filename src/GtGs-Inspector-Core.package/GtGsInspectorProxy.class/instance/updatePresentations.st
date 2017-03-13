updating
updatePresentations
	| aComposite |
	aComposite := GtGsGlmCompositePresentation new.
	self inspectorPresentationsIn: aComposite.
	
	aComposite presentations do: [ :each | 
		each cache at: #inspectorPresentation put: true.
		each updateForOwner: self  ].

	presentations := aComposite presentations