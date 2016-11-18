actions
logStackToFileIfNeeded

	DebugSession logDebuggerStackToFile ifFalse: [ ^self ].
	
	[self class logError: self name withStack: self stack ] ifError: [ ]