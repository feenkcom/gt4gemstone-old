actions - proxy
performRemotely: aSelector withArguments: argumentsArray
	"Perform remotely aSelector with the given arguments and create a proxy object 
	if the remote call returned a reference to a remote object. If the remote call 
	returned a primitive value return it directly without creating a proxy object."
	| result |
	
	result := self gemstoneClient 
		send: aSelector 
		to: self selfOopType
		withArgs: (argumentsArray collect: [ :anObject |
			anObject gtGsBareProxyAsArgument ]).
	^ result class = GsGciOopType 
		ifTrue: [ self gemstoneClient bareProxyForOopType: result ofType: GtGsBareProxy ]
		ifFalse: [ result ]
		
		"^ self gemstoneClient buildRemoteBareProxyFrom: (
			self 
				computationStringFor: aSelector 
				withArguments: argumentsArray)"