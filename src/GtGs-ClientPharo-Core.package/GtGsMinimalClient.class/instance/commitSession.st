actions - api
commitSession

	self performStringRemotely: 'System commit'.
	self updateCommitIndicator.
	self updateSessionHandler