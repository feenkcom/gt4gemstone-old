instance-creation
createAndSerializeProxyFor: anObject
	
	^ self createAndSerializeProxyForOop: (Reflection oopOf: anObject).
		