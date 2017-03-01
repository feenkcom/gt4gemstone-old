callbacks
computeMethodsPresentationsFor: aNode

	self initializeMethodsPresentationFor: aNode targetObject.
	^ self topezServer objectSerializer toString: self methodsPresentation