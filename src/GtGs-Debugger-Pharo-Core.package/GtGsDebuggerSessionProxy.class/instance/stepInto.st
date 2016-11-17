debugging actions
stepInto
	| processResult |

	processResult := self gemstoneClient
		executeRemotely: #dbStepInto 
		on: self gemstoneDebuggerSessionOopType
		withArguments: #().

	self performGemstoneResult: processResult
	