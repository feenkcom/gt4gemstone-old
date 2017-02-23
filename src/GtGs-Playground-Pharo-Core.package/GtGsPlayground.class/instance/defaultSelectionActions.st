accessing-actions
defaultSelectionActions
	^  { self codePresentation gtGsRemoteDoItAndGoActionsWith: self gemstoneClient},
		(self codePresentation gtGsRemoteExecutionSelectionActionsWith: self gemstoneClient), 
	  self codePresentation gtGsLocalExecutionSelectionActions