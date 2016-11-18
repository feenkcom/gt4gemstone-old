debugging actions
restartGemstoneProcess
	| processResult |

	processResult := self gemstoneClient
		executeRemotely: #dbRestart
		on: self gemstoneDebuggerSessionOopType
		withArguments: #().

	self handleResponseActions: processResult
	