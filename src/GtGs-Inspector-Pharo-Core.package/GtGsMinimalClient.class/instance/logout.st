login/logout
logout
	self closeAllRemoteWindows.
	super logout.
	sessionId := nil.
	self updateSessionHandler