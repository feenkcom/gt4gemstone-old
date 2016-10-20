callbacks
actOnRequestExecuteActionWithId: anInteger

	self flag: 'For the moment only support selection actions'.
	(self gsSelectionActions at: anInteger) executeForPresentation: self