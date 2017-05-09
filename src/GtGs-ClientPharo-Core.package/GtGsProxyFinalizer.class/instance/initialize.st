initialization
initialize
	super initialize.
	garbageCollectionMutex := Mutex new.
	garbageCollectionProxyMap := IdentityDictionary new