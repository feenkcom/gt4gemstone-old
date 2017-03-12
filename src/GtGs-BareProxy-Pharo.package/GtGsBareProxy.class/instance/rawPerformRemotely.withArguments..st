actions - proxy
rawPerformRemotely: aSelector withArguments: argumentsArray
	^ self gemstoneClient 
		send: aSelector 
		to: self selfOopType
		withArgs: argumentsArray