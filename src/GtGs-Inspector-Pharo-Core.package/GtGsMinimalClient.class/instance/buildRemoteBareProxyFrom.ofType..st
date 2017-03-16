actions - proxy
buildRemoteBareProxyFrom: computationString ofType: aProxyClass
	| computationResult |
	computationResult := self executeString: computationString.
	^ computationResult class = GsGciOopType 
		ifTrue: [ aProxyClass new 
			gemstoneClient: self;
			selfOopType: computationResult ]
		ifFalse: [ computationResult ]
