as yet unclassified
sessionForContext: aContext

	^ aContext class = GtGsDebuggerStackFrame 
		ifTrue: [ self session  ]
		ifFalse: [ self session clientSession ]