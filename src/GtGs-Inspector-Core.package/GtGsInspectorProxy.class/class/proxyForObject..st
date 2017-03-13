accessing
proxyForObject: anObject
	| proxyClassSymbol | 
	
	anObject isBehavior ifTrue: [ ^ GtGsClassInspectorProxy new ].
	
	proxyClassSymbol := self proxyMappings 
		at: anObject class name	
		ifAbsent: [ self name ].
	
	^ (GsCurrentSession currentSession symbolList objectNamed: proxyClassSymbol) new
	