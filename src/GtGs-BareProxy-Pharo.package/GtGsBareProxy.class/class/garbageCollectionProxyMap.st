gci api
garbageCollectionProxyMap
	^ garbageCollectionProxyMap ifNil: [ 
			garbageCollectionProxyMap := IdentityDictionary new ]
	