actions
navigateFrame: aStackFrame

	self gemstoneClient
		send: #navigateFrame: 
		to: self gemstoneDebuggerSessionOopType
		withArgs: {aStackFrame frameIndex}.