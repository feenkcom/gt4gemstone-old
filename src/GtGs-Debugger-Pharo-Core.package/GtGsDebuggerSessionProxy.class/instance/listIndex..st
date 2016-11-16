debugging actions
listIndex: frameIndex
	| updatedStack |
	updatedStack := self gemstoneClient
		executeRemotely: #computeStack
		on: self gemstoneDebuggerSessionOopType
		withArguments: {}.
	self gemstoneDebuggerSession stack: updatedStack.