private
bareProxyForOopType: anOopType ofType: aProxyClass
	^ self proxyFinalizer registerForGarbageCollectionBareProxy: (
		aProxyClass new 
			gemstoneClient: self;
			selfOopType: anOopType)