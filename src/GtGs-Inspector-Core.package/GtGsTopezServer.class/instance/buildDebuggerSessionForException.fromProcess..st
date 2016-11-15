as yet unclassified
buildDebuggerSessionForException: aGsException fromProcess: aGsProcess
	| debuggerSession |
	debuggerSession := GtGsDebuggerSession 
		forException: aGsException fromProcess: aGsProcess.
	debuggerSession topezServer: self.
	debuggerSession addToSessionTemps.
	^ self objectSerializer toString: debuggerSession 