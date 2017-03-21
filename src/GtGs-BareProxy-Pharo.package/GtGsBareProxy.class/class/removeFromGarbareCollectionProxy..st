gc api
removeFromGarbareCollectionProxy: aBareProxy
	| proxyOop |
	
	proxyOop := aBareProxy selfOop.
	self garbageCollectionMutex critical: [
		self garbageCollectionProxyMap removeKey: proxyOop ifAbsent: [] ]
	