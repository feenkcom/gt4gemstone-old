pharo - debuggins actions
resume
	| processResult |
	processResult := self basicResumeGemstoneProcess.

	processResult first = #closeAndReturn 
		"Resume the client process as the debugging actions calling this method 
		will close the debugger and clear the client process."
		ifTrue: [ 
			resumeResult := self remoteReturnValue.
			self clientSession 
				resume;
				clear.
			^ self ].
	"Perform the action to update the debugger".
	self handleResponseActions: processResult.
	
	"Since the debugger action will close the debugger open a new one. 
	Remove the session so its state is not changed when the current debugger is closed.
	We do not change the state of the session at it will be reused by the new debugger."
	self debugger removeSessionSilently.
	
	"The resume action will close the debugger."
	self spawnDebugger: (self debugger class on: self).