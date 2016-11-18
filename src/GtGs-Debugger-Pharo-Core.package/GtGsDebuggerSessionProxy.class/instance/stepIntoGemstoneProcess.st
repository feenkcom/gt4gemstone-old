debugging actions
stepIntoGemstoneProcess
	| processResult |

	processResult := self gemstoneClient
		executeRemotely: #dbStepInto 
		on: self gemstoneDebuggerSessionOopType
		withArguments: #().

	self handleResponseActions: processResult
	