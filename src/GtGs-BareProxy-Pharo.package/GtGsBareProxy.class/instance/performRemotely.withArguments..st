actions - proxy
performRemotely: aSelector withArguments: argumentsArray
	"Perform remotely aSelector with the given arguments and create a proxy object 
	if the remote call returned a reference to a remote object. If the remote call 
	returned a primitive value return it directly without creating a proxy object.
	Primitive arguments are pased by value. Proxy arguments are passed based on their
	oop type, meaning that the actual remote object will be passed to the remote method."
	| result |
	
	result := self gemstoneClient 
		send: aSelector 
		to: self selfOopType
		withArgs: (argumentsArray collect: [ :anObject |
			anObject gtGsBareProxyAsArgument ]).
	^ result class = GsGciOopType 
		ifTrue: [ self gemstoneClient bareProxyForOopType: result ofType: GtGsBareProxy ]
		ifFalse: [ result ]