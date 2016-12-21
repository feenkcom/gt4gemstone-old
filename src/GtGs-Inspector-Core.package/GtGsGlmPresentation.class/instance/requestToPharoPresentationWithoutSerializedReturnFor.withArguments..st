experimental
requestToPharoPresentationWithoutSerializedReturnFor: aSelector withArguments: anArray
	<flag: #experimental>
	
	^ self selfForwarder 
		requestFromGemstoneWithoutSerializedReturnFor: aSelector
		withArguments: (self topezServer objectSerializer toString: anArray)