as yet unclassified
debuggerRequested: returnValue
	|exception stackReport|
	exception := thisContext sender receiver.

	stackReport := self objectSerializer fromString: (self session 
		send: #collectDebuggerStackForProcess:
		to: self todeServerOopType
		withArgs: {exception contextOopType}).
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
		