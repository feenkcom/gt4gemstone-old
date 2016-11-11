*GtGs-Inspector-Extensions
buildDebuggerStackForException: aGsException fromProcess: aGsProcess
	| stack |
	stack := GtGsDebuggerStack new
   		process: aGsProcess;
    	exception: aGsException;
		createFrames;
    	yourself.
	^ self objectSerializer toString: stack