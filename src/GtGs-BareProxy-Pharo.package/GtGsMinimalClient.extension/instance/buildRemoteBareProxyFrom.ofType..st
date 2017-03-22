*GtGs-BareProxy-Pharo
buildRemoteBareProxyFrom: computationString ofType: aProxyClass
	| computationResult |
	computationResult := self executeString: computationString.
	^ computationResult class = GsGciOopType 
		ifTrue: [ self bareProxyForOopType: computationResult ofType: aProxyClass ]
		ifFalse: [ computationResult ]
