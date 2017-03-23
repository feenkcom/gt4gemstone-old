*GtGs-Inspector-Pharo-Core
remotePresentationUsing: aSelector forNode: aNode
	| remotePresentation |
	remotePresentation := self gemstoneClient 
		executeRemotely: #computePresentationsUsing:for:
		on: (self gemstoneClient session asOopType: self selfOop)
		withArguments: { 
			aSelector .
			self gemstoneClient session asOopType: aNode selfOop }.
	^ remotePresentation 
		gemstoneClient: self gemstoneClient;
		yourself