accessing
sessionHashDescription
	^ self isActive 
		ifTrue: [ self identityHash asString ]
		ifFalse: [ '-' ]
	