as yet unclassified
selectorsCreatingPresentationsForObject: anObject
	^ (super selectorsCreatingPresentationsForObject: anObject), 
	{ #gtGsInspectorInstanceMethodsIn: . #gtGsInspectorSuperclassesIn: }