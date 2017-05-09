gc api
registerForGarbageCollectionBareProxy: aBareProxy
	"I register the given bare proxy for garbage collection. I implement a simple reference counting gc
	based on the oop of the proxy. When no more bare proxies exist with the given oop I release the
	corresponding object on the remote side."
	| oopOccurences proxyOop |
	
	proxyOop := aBareProxy selfOop.
	self garbageCollectionMutex critical: [
		
		oopOccurences := self garbageCollectionProxyMap 
			at: proxyOop 
			ifAbsent: [ self garbageCollectionProxyMap at: proxyOop put: 0 ].
		self garbageCollectionProxyMap at: proxyOop put: (oopOccurences + 1).
		
		self class finalizationRegistry 
			add: aBareProxy 
			executor:
			   "Pass the session to the finalizer and not the client, as the
			   client can be initialized with a new session."
				(ObjectFinalizer new
					receiver: self
					selector: #decreaseGarbageCollectionCounterForBareProxyAndSession:
					argument: {proxyOop . aBareProxy gemstoneClient session} ).
		
		^ aBareProxy ]