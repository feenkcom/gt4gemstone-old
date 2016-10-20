accessing-actions
defaultSelectionActions
	^ (self codePresentation gtGsRemoteExecutionSelectionActionsWith: self gemstoneClient), 
	  self codePresentation gtGsLocalExecutionSelectionActions