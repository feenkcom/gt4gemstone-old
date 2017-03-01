callbacks
computeMethodsPresentationsFor: aNode

	self buildMethodsPresentationFor: aNode targetObject.
	^ self topezServer objectSerializer toString: self methodsPresentation