instance-creation
createAndSerializeProxyFor: anObject andSelect: aPresentationTitle
	
	^ self createAndSerializeProxyForOop: (Reflection oopOf: anObject) andSelect: aPresentationTitle
		