as yet unclassified
debuggerRequested: returnValue
	|gsNotification stackReport|
	gsNotification := thisContext sender receiver.
	
	GtGsGenericStackDebugger debugSession: (GtGsDebuggerSession 
		forClient: self andNotification: gsNotification).

	stackReport := self objectSerializer fromString: (self session 
		send: #collectDebuggerStackForProcess:
		to: self todeServerOopType
		withArgs: {gsNotification contextOopType}).
	Smalltalk tools transcript 
		open;
		show: ('-' repeat: 50);
		show: String cr;
		show: returnValue;
		show: String cr;
		show: ('-' repeat: 50);
		show: String cr;
		show: stackReport;
		show: ('-' repeat: 50);
		show: String cr.
	^ nil
		