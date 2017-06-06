accessing
sessionDetails

	^ (self hasSessionName 
		ifTrue: [ self sessionName ]
		ifFalse: [ ' - ' ]), ' [', self sessionHash asString, ']', ' [', self sessionId asString, ']'
	