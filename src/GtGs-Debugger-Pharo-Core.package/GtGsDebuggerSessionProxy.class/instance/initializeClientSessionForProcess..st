initialization
initializeClientSessionForProcess: aPharoProcess

	clientSession := DebugSession new
		process: aPharoProcess;
		detectUIProcess;
		yourself