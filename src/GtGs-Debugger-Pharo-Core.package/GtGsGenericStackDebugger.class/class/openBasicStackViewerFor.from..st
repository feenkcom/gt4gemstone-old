actions
openBasicStackViewerFor: aGemstoneNotification from: aGemstoneClient
	| stackReport |
	
	stackReport := aGemstoneClient objectSerializer fromString: (aGemstoneClient session 
		send: #collectDebuggerStackForProcess:
		to: aGemstoneClient todeServerOopType
		withArgs: {aGemstoneNotification contextOopType}).
	Smalltalk tools transcript 
		open;
		show: ('-' repeat: 50);
		show: String cr;
		show: ('-' repeat: 50);
		show: String cr;
		show: stackReport;
		show: ('-' repeat: 50);
		show: String cr.
	