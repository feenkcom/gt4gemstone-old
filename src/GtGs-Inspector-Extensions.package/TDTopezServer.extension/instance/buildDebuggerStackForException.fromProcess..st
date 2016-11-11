*GtGs-Inspector-Extensions
buildDebuggerStackForException: aGsException fromProcess: aGsProcess
	| stack |
	stack := GtGsDebuggerStack new
   		process: aGsProcess;
    	exception: aGsException;
		createFrames;
		updateCache;
    	yourself.
	^ self objectSerializer toString: stack