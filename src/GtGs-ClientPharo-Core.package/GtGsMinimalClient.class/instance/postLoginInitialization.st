login/logout
postLoginInitialization

	self initializeProxyFinalizer.
	self startTime: DateAndTime now.
	self initializeSessionId.
	needsCommitIndicator := false.
	self registerWithSessionHandler