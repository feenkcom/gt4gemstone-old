login/logout
loginWith: aSessionDescription

	super loginWith: aSessionDescription.
	self startTime: DateAndTime now.
	self initializeSessionId.
	needsCommitIndicator := false.
	self registerWithSessionHandler