callbacks
computeCodePresentationsFor: aNode

	self buildCodePresentationFor: aNode targetObject.
	^ self topezServer objectSerializer toString: self codePresentation