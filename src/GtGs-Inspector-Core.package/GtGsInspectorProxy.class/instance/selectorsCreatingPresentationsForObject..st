as yet unclassified
selectorsCreatingPresentationsForObject: anObject
	| objectClass |
	
	objectClass := Reflection classOf: anObject.
	^ objectClass allSelectors select: [ :aSelector |
		self isMethodCreatingPresentation: (anObject gtGsLookupSelector: aSelector) ].