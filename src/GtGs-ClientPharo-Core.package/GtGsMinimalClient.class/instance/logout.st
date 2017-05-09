login/logout
logout
	super logout.
	self resetProxyFinalizer.
	self closeAllRemoteWindows.
	sessionId := nil.
	needsCommitIndicator := nil.
	self updateSessionHandler