*GtGs-Inspector-Pharo-Core
executeRemotelySelectionActionWithId: anInteger forPresentation: aGlamourPresentation
	"Execute the selecton action with the given it and pass it the selection as an
	argument. Different presentations, however, treat selection differently. Hence, 
	each presentation should decide how to extract and pass the selection."

	self gemstoneClient
		send: #actOnRequestExecuteSelectionActionWithId:andSelection:
		to: self selfOopType
		withArgs: { anInteger . (self selectionAsCallbackArgumentFor: aGlamourPresentation) }