*GtGs-Inspector-Pharo-Core
remoteGlamourPresentationFor: anObjectSelector using: aPresentationSelector withArguments: argumentsString
	| remotePresentation |
	
	remotePresentation := self gemstoneClient 
		executeRemotely: #computeGlamourPresentationFor:using:withArguments:
		on: (self gemstoneClient session asOopType: self selfOop)
		withArguments: { anObjectSelector. aPresentationSelector . argumentsString }.
	^ remotePresentation 
		gemstoneClient: self gemstoneClient;
		yourself