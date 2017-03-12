as yet unclassified
remotePresentationUsing: aSelector
	| remotePresentation |
	remotePresentation := self gemstoneClient 
		executeRemotely: #computePresentationsUsing:
		on: (self gemstoneClient session asOopType: self selfOop)
		withArguments: { aSelector }.
	^ remotePresentation 
		gemstoneClient: self gemstoneClient;
		yourself