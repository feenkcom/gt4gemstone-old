actions - proxy
rawPerformRemotely: aSelector withArguments: argumentsArray
	"Perform a simple message send of the given selector without converting the result or 
	altering the arguments. If an oop type is returned it will not be registered for garbage
	collection. It is the responsability of the caller to notify GCI when the object is no
	longer needed."
	
	^ self gemstoneClient 
		send: aSelector 
		to: self selfOopType
		withArgs: argumentsArray