*GtGs-Inspector-Extensions
buildDebuggerSessionForException: aGsException fromProcess: aGsProcess
	| debuggerSession |
	debuggerSession := GtGsDebuggerSession 
		forException: aGsException fromProcess: aGsProcess.
	debuggerSession topezServer: self.
	^ self objectSerializer toString: debuggerSession 