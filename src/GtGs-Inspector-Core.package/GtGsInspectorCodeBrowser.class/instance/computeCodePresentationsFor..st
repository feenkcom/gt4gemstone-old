callbacks
computeCodePresentationsFor: aNode

	self initializeCodePresentationFor: aNode targetObject.
	^ self topezServer objectSerializer toString: self codePresentation