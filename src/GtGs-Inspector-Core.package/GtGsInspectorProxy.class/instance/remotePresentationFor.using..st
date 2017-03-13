as yet unclassified
remotePresentationFor: anObjectSelector using: aPresentationSelector
	| remotePresentation |
	
	remotePresentation := self gemstoneClient 
		executeRemotely: #computePresentationFor:using:
		on: (self gemstoneClient session asOopType: self selfOop)
		withArguments: { anObjectSelector. aPresentationSelector }.
	^ remotePresentation 
		gemstoneClient: self gemstoneClient;
		yourself