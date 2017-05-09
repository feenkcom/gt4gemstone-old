accessing - topez
temporarySessionStorage
	^ (GsSession currentSession symbolList 
		objectNamed: #'GtGsGlmPresentation' ) temporarySessionStorage 