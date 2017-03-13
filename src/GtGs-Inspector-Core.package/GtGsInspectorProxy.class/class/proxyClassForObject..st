accessing
proxyClassForObject: anObject
	| mappings proxyClassSymbol | 
	
	mappings := self proxyMappings.
	proxyClassSymbol := mappings at: anObject class name ifAbsent: [ self name ].
	^ GsCurrentSession currentSession symbolList objectNamed: proxyClassSymbol
	