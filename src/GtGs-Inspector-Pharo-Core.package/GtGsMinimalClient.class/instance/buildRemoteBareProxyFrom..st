actions api
buildRemoteBareProxyFrom: aString
	| computationResult |
	computationResult := self session executeString: aString.
	^ computationResult class = GsGciOopType 
		ifTrue: [ self bareProxyForOopType: computationResult ]
		ifFalse: [ computationResult ]
