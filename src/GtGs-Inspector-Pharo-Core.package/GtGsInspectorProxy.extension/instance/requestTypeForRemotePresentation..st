*GtGs-Inspector-Pharo-Core
requestTypeForRemotePresentation: aSelector

	^ self gemstoneClient 
		executeRemotely: #computeRequestTypeForRemotePresentation:
		on: (self gemstoneClient session asOopType: self selfOop)
		withArguments: { aSelector }.