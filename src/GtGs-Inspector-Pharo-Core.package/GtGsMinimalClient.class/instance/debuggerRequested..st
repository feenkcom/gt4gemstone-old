exception handling
debuggerRequested: returnValue
	| gsNotification |
	gsNotification := thisContext sender receiver.
	
	GtGsGenericStackDebugger useBasicStackViewer 
		ifTrue: [
			GtGsGenericStackDebugger openBasicStackViewerFor: gsNotification from: self ]
		ifFalse: [
			GtGsGenericStackDebugger debugSession: (GtGsDebuggerSessionProxy 
				forClient: self andNotification: gsNotification in: Processor activeProcess).].
		
	^ nil
		