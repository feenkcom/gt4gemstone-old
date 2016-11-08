*GtGs-Inspector-Core
collectDebuggerStackForProcess: aProcessOop
	| stackReport |
	stackReport := (Object _objectForOop: aProcessOop) stackReportToLevel: 100 withArgsAndTemps: true andMethods: true.
	^ self objectSerializer toString: stackReport