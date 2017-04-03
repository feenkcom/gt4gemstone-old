accessing
elementsFor: aFormatter
	| remoteCommand |
	
	remoteCommand := self toExecutableString: aFormatter.
	^ aFormatter locallyFormatElements: (self 
		fromString: (aFormatter gemstoneClient executeString: remoteCommand))