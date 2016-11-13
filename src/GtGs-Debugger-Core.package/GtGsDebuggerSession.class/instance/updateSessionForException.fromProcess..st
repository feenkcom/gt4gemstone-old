as yet unclassified
updateSessionForException: aGsException fromProcess: aGsProcess 
	stack := GtGsDebuggerStack new
   		process: aGsProcess;
    	exception: aGsException;
		createFrames;
		updateCache;
    	yourself.
	stack currentFrame 
		updateSourceCode;
		selectionRange