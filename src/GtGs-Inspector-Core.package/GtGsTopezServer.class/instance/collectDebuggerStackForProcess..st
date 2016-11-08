as yet unclassified
collectDebuggerStackForProcess: aProcessOop
	| stackReport |
	stackReport := (Object _objectForOop: aProcessOop) stackReportToLevel: 100 withArgsAndTemps: true andMethods: true.
	^ objectSerializer toString: stackReport