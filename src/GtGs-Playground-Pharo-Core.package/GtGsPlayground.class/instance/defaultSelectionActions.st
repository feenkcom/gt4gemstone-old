accessing-actions
defaultSelectionActions
	^  { self codePresentation gtGsRemoteDoItAndGoActionsWith: self gemstoneClient},
		(self codePresentation gtGsRemoteExecutionSelectionActionsWith: self gemstoneClient),
	  	(self codePresentation gtGsRemoteBrowsingSelectionActionsWith: self gemstoneClient), 
	  	self codePresentation gtGsLocalExecutionSelectionActions,
		self codePresentation gtGsLocalBrowsingSelectionActions,
		self codePresentation codeEditingSelectionActions