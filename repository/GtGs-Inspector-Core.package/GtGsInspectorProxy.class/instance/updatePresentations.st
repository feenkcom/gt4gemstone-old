updating
updatePresentations
	| aPresentation |
	presentations := OrderedCollection new.
	aPresentation := targetObject gtGsInspectorRawTreePresentationWith: self topezServer objectSerializer.
	aPresentation ifNotNil: [  
		presentations add: aPresentation ].
	
	presentations do: [ :each | 
			each 
				serializer: self topezServer objectSerializer;
				updateUninitializedBlocks ]