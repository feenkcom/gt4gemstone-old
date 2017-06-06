accessing
formatProcessorTitle: aTitle
	^ self isStandalone 
		ifTrue: [ aTitle ]
		ifFalse: [ 'Gemstone ', aTitle ]