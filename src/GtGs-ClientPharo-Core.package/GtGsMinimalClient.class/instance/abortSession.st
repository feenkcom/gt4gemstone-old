actions - api
abortSession

	self evaluateStringRemotely: 'System abort'.
	self updateCommitIndicator.
	self updateSessionHandler