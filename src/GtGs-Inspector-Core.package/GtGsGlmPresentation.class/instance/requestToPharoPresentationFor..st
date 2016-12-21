experimental
requestToPharoPresentationFor: aSelector
	<flag: #experimental>
	^ self topezServer objectSerializer fromString: (self selfForwarder requestFromGemstoneFor: aSelector)