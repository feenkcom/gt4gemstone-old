updating
updatePresentations
	| aPresentation aComposite|
	aComposite := GtGsGlmCompositePresentation new.
	aPresentation := targetObject gtGsInspectorRawTreePresentationIn: aComposite.
	aPresentation := targetObject gtGsInspectorRawTablePresentationIn: aComposite.
	
	aComposite presentations do: [ :each | 
		each 
			serializer: self topezServer objectSerializer;
			updateUninitializedBlocks;
			updateCache ].

	presentations := aComposite presentations