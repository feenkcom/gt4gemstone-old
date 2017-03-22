accessing
sessionIdDescription
	^ self sessionId
		ifNil: [ '-' ]
		ifNotNil: [ :aSessionId | aSessionId asString ]
	