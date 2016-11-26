debugging actions
basicResumeGemstoneProcess
	^ self gemstoneClient
		executeRemotely: #dbContinue 
		on: self gemstoneDebuggerSessionOopType
		withArguments: #()
	