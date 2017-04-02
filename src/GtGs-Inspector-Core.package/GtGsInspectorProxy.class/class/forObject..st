instance-creation
forObject: anObject
	
	^ (self proxyForObject: anObject)
		forObject: anObject;
		yourself
		