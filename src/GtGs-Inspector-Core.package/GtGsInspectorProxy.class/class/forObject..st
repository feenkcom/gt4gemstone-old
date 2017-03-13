instance-creation
forObject: anObject
	
	^ (self proxyClassForObject: anObject)
		forObject: anObject;
		linkWithTopezServer;
		yourself
		