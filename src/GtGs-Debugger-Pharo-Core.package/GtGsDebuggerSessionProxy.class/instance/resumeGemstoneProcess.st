debugging actions
resumeGemstoneProcess
	| processResult |
	processResult := self gemstoneClient session 
		send: #dbContinue
		to: self gemstoneDebuggerSessionOopType.
	