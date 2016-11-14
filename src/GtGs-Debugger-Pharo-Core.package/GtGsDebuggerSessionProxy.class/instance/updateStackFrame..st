as yet unclassified
updateStackFrame: aStackFrame
	| updatedStackFrame |
	updatedStackFrame := self gemstoneClient
		executeRemotely: #updateStackFrameWithIndex: 
		on: self gemstoneDebuggerSessionOopType
		withArguments: {aStackFrame frameIndex}.
	aStackFrame updateFromFrame: updatedStackFrame