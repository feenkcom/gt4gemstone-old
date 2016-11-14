as yet unclassified
updateSessionForException: aGsException fromProcess: aGsProcess 
	stack := GtGsDebuggerStack new
   		process: aGsProcess;
    	exception: aGsException;
		yourself.
	self updateCache