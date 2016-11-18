debugging actions
stepOverGemstoneProcess
	| processResult |

	processResult := self gemstoneClient
		executeRemotely: #dbStepOver
		on: self gemstoneDebuggerSessionOopType
		withArguments: #().

	self handleResponseActions: processResult
	