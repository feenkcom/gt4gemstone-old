updating
updatePresentations
	
	presentations := OrderedCollection new.
	presentations add: (targetObject gtGsInspectorRawTreePresentationWith: self topezServer objectSerializer).
	
	presentations do: [ :aPresentation | aPresentation serializer: self topezServer objectSerializer]