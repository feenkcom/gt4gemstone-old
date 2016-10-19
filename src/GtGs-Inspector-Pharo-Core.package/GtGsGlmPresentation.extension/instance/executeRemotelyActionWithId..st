*GtGs-Inspector-Pharo-Core
executeRemotelyActionWithId: anInteger

	self gemstoneClient session
		send: #actOnRequestExecuteActionWithId:
		to: self selfOopType
		withArgs: { anInteger }