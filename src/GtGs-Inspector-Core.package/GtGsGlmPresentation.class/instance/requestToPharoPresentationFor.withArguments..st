experimental
requestToPharoPresentationFor: aSelector withArguments: anArray
	self flag: #experimental.
	^ self topezServer objectSerializer fromString: (self selfForwarder 
		requestFromGemstoneFor: aSelector
		withArguments: (anArray collect: [ :anObject | self topezServer objectSerializer toString: anObject ] ))