as yet unclassified
requestToPharoPresentationFor: aSelector withArguments: anArray

	^ self topezServer objectSerializer fromString: (self selfForwarder 
		requestFromGemstoneFor: aSelector
		withArguments: (anArray collect: [ :anObject | self topezServer objectSerializer toString: anObject ] ))