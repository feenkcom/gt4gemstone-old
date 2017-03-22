login/logout
logout
	super logout.
	self proxyFinalizer clearGarbageCollectionProxyMap.
	self closeAllRemoteWindows.
	sessionId := nil.
	self updateSessionHandler