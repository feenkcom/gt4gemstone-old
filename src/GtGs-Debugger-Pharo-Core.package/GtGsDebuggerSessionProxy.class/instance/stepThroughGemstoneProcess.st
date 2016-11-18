debugging actions
stepThroughGemstoneProcess
	| processResult |

	processResult := self gemstoneClient
		executeRemotely: #dbStepThrough
		on: self gemstoneDebuggerSessionOopType
		withArguments: #().

	self handleResponseActions: processResult
	