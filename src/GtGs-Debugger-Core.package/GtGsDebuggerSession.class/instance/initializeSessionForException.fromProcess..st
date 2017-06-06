initialization
initializeSessionForException: aGsException fromProcess: aGsProcess 
	stack := GtGsDebuggerStack new
   		process: aGsProcess;
    	exception: aGsException;
		debugSession: self;
		yourself.
	self initializeForwarder.
	self updateCache