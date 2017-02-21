login/logout
logout
	self closeAllRemoteWindows.
	super logout.
	self removeFromSessionHandler