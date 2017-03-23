updating
updateStackFrameIfRequired: aStackFrame
	| updatedStackFrame |
	
	aStackFrame needsFullUpdate ifTrue: [
		updatedStackFrame := self gemstoneClient
			executeRemotely: #computeStackFrameWithIndex: 
			on: self gemstoneDebuggerSessionOopType
			withArguments: {aStackFrame frameIndex}.
		aStackFrame updateFromFrame: updatedStackFrame ].
	
	self navigateFrame: aStackFrame