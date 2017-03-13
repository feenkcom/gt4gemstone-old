instance-creation
forObject: anObject
	
	^ (self proxyClassForObject: anObject) new
		forObject: anObject;
		linkWithTopezServer;
		yourself
		