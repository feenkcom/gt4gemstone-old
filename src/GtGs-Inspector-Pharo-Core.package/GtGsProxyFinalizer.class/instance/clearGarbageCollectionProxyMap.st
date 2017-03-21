gc api
clearGarbageCollectionProxyMap

	self garbageCollectionMutex critical: [
		garbageCollectionProxyMap := nil ]