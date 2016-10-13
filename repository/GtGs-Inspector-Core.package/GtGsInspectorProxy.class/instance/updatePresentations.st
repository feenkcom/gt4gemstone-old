updating
updatePresentations
	| aComposite |
	aComposite := GtGsGlmCompositePresentation new.
	targetObject 
		gtGsInspectorPresentationsIn: aComposite
		inContext: self.
	
	aComposite presentations do: [ :each | 
		each 
			serializer: self topezServer objectSerializer;
			updateUninitializedBlocks;
			updateCache ].

	presentations := aComposite presentations