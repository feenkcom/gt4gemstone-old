*GtGs-Inspector-Pharo-Core
remoteInspectorPresentationFor: anObjectSelector using: aPresentationSelector
	| remotePresentation |
	
	remotePresentation := self gemstoneClient 
		executeRemotely: #computeInspectorPresentationFor:using:
		on: (self gemstoneClient session asOopType: self selfOop)
		withArguments: { anObjectSelector. aPresentationSelector }.
	^ remotePresentation ifNotNil: [
		remotePresentation 
			gemstoneClient: self gemstoneClient;
			yourself ]