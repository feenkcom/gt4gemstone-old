initialization
initializeSessionForException: aGsException fromProcess: aGsProcess 
	stack := GtGsDebuggerStack new
   		process: aGsProcess;
    	exception: aGsException;
		yourself.
	self initializeForwarder.
	self updateCache