*GtGs-ClientGemstone-Topez
collectDebuggerStackForProcess: aGsProcess
	| stackReport |
	stackReport := aGsProcess stackReportToLevel: 100 withArgsAndTemps: true andMethods: true.
	^ self objectSerializer toString: stackReport