exception handling
debuggerRequested: returnValue
	| gsNotification  |
	gsNotification := thisContext sender receiver.
	
	GtGsGenericStackDebugger useBasicStackViewer 
		ifTrue: [
			GtGsGenericStackDebugger openBasicStackViewerFor: gsNotification from: self ]
		ifFalse: [ 
			|debuggingSession|
			debuggingSession := (GtGsDebuggerSessionProxy 
					forClient: self 
					andNotification: gsNotification 
					in: Processor activeProcess).
			GtGsGenericStackDebugger 
				debugSession: debuggingSession.
			^ debuggingSession resumeResult ].
		
	^ returnValue
		