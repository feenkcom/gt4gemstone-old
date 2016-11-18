as yet unclassified
navigateFrame: aStackFrame

	self gemstoneClient session
		send: #navigateFrame: 
		to: self gemstoneDebuggerSessionOopType
		withArgs: {aStackFrame frameIndex}.