debugging actions
stepOver
	| processResult |

	processResult := self gemstoneClient
		executeRemotely: #dbStepOver
		on: self gemstoneDebuggerSessionOopType
		withArguments: #().

	self performGemstoneResult: processResult
	