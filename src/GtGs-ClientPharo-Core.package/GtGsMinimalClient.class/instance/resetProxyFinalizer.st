login/logout
resetProxyFinalizer
	proxyFinalizer ifNotNil: [ :aProxyFinalizer | aProxyFinalizer clearGarbageCollectionProxyMap ].
	proxyFinalizer := nil.