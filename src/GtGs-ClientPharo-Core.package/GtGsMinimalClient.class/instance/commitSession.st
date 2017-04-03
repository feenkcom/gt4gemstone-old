actions - api
commitSession

	self evaluateStringRemotely: 'System commit'.
	self updateCommitIndicator.
	self updateSessionHandler