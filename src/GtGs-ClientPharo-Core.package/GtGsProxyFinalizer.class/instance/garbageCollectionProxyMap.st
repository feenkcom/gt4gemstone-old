private
garbageCollectionProxyMap
	^ garbageCollectionProxyMap ifNil: [ 
			garbageCollectionProxyMap := IdentityDictionary new ]