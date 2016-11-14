as yet unclassified
updateStackFrame: aStackFrame
	| updatedStackFrame |
	updatedStackFrame := self gemstoneClient objectSerializer fromString: (self gemstoneClient
		executeRemotely: #updateStackFrameWithIndex: 
		on: self gemstoneDebuggerSessionOopType
		withArguments: {aStackFrame frameIndex} ).
	aStackFrame updateFromFrame: updatedStackFrame
	
	" (self gemstoneClient 
		send: #buildDebuggerSessionForException:fromProcess:
		to: self gemstoneClient todeServerOopType
		withArgs: {gemstoneNotification exceptionOopType. gemstoneNotification contextOopType})."