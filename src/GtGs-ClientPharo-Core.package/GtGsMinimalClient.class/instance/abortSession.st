actions - api
abortSession

	self performStringRemotely: 'System abort'.
	self updateCommitIndicator.
	self updateSessionHandler