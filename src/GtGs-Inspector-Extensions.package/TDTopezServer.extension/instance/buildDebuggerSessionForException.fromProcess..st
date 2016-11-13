*GtGs-Inspector-Extensions
buildDebuggerSessionForException: aGsException fromProcess: aGsProcess
	| debuggerSession |
	debuggerSession := GtGsDebuggerSession 
		forException: aGsException fromProcess: aGsProcess.
	^ self objectSerializer toString: debuggerSession 