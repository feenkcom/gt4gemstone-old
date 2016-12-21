experimental
requestToPharoPresentationFor: aSelector withArguments: anArray
	<flag: #experimental>
	
	^ self topezServer objectSerializer fromString: (self selfForwarder 
		requestFromGemstoneFor: aSelector
		withArguments: (self topezServer objectSerializer toString: anArray) )