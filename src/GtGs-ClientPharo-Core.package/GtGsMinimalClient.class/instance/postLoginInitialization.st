login/logout
postLoginInitialization

	self initializeProxyFinalizer.
	self initializeSessionId.
	needsCommitIndicator := false.
	self registerWithSessionHandler.
	#GtGsGemstoneClientLoggedInSignal asClassIfPresent: [ :signalClass | 
		signalClass emitForClient: self].