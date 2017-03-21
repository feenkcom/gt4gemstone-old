gc api
garbageCollectionProxyMap
	^ garbageCollectionProxyMap ifNil: [ 
			garbageCollectionProxyMap := IdentityDictionary new ]
	