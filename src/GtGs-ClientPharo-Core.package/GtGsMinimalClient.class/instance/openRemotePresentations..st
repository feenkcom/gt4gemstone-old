callbacks - services
openRemotePresentations: aStonString
	| remotePresentations aComposite |
	
	aComposite := GLMCompositePresentation new.
	remotePresentations := self objectSerializer fromString: aStonString.
	remotePresentations do: [ :aGsPresentation |
		aGsPresentation gemstoneClient: self.
		aGsPresentation gtGsAsGlamourPresentationIn: aComposite ].
	aComposite openOn: remotePresentations.
	^ true