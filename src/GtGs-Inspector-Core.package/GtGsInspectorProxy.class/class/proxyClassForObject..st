accessing
proxyClassForObject: anObject
	| mappings proxyClassSymbol | 
	
	mappings := self proxyMappings.
	proxyClassSymbol := mappings 
		at: 
			(anObject isBehavior 
				ifFalse: [ anObject class name ]
				ifTrue: [ anObject name ])	
		ifAbsent: [ self name ].
	
	^ GsCurrentSession currentSession symbolList objectNamed: proxyClassSymbol
	