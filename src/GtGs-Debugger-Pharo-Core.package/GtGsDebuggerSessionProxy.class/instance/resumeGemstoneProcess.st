debugging actions
resumeGemstoneProcess
	| processResult |

	processResult := self gemstoneClient
		executeRemotely: #dbContinue 
		on: self gemstoneDebuggerSessionOopType
		withArguments: #().

	self handleResponseActions: processResult
	