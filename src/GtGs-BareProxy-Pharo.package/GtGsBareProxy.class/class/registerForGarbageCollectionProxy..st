gc api
registerForGarbageCollectionProxy: aBareProxy
	| oopOccurences proxyOop |
	
	proxyOop := aBareProxy selfOop.
	self garbageCollectionMutex critical: [
		
		oopOccurences := self garbageCollectionProxyMap 
			at: proxyOop 
			ifAbsent: [ self garbageCollectionProxyMap at: proxyOop put: 0 ].
		self garbageCollectionProxyMap at: proxyOop put: (oopOccurences + 1).
		
		self finalizationRegistry add: aBareProxy ]