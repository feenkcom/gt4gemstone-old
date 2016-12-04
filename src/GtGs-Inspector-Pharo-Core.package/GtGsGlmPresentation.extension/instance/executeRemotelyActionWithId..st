*GtGs-Inspector-Pharo-Core
executeRemotelyActionWithId: anInteger

	self gemstoneClient
		send: #actOnRequestExecuteActionWithId:
		to: self selfOopType
		withArgs: { anInteger }