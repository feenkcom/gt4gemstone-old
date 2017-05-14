as yet unclassified
patchGsGciClientForwarderSend

	GsGciClientForwarderSend 
		compile: 'performSendNoForwarder: noForwarderBlock
	| forwarder selector args messageArgsOopType anUUID result |
	args := self gci32xErrSType readArguments.
	forwarder := gciSession
		clientObjectForwarderForOopType: (args at: 1)
		ifAbsent: noForwarderBlock.
	selector := (args at: 3) asLocalObjectFor: self gciSession.
	messageArgsOopType := args at: 4.	"defer resolving selector args until message send times"
	
	anUUID := UUID new.
	GtGsSessionInitiateForwarderExecutionSignal
		emitForRequest: selector 
		fromClient: self gciSession clientObj 
		toObject: forwarder 
		withArgs: { messageArgsOopType } 
		andRequestId: anUUID.
	
	result := forwarder gsGciPerformFromServer: selector with: messageArgsOopType using: gciSession.
	
	GtGsSessionCompleteForwarderExecutionSignal
		emitForClient: self gciSession clientObj
		withResponse: result 
		andRequestId: anUUID.
	
	^ result'
		classified: 'sending'