private
bareProxyForOopType: anOopType ofType: aProxyClass
	^ aProxyClass new 
			gemstoneClient: self;
			selfOopType: anOopType ";
			registerForGarbageCollection"
