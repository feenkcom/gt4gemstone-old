as yet unclassified
updateStackFrame: aStackFrame
	| updatedStackFrame |
	updatedStackFrame := self gemstoneClient
		executeRemotely: #computeStackFrameWithIndex: 
		on: self gemstoneDebuggerSessionOopType
		withArguments: {aStackFrame frameIndex}.
	aStackFrame updateFromFrame: updatedStackFrame