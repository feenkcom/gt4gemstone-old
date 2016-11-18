exception handling
debuggerRequested: returnValue	
	| gsNotification |
	
	gsNotification := thisContext sender receiver.
	gemstoneDebuggerSession := GtGsDebuggerSessionProxy 
			forClient: self andNotification: gsNotification in: nil.
	^ nil