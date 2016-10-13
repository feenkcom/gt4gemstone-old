*GtGs-Inspector-Core
gtGsInspectorPresentationsIn: aComposite inContext: aContext
	| pragmas |
	pragmas := Pragma
		allNamed: #gtGsInspectorPresentationOrder:
		from: (Reflection classOf: self)
		to: Object
		sortedUsing: [ :x :y | (x argumentAt: 1) < (y argumentAt: 1) ].

	pragmas
		do: [ :aPragma | 
			aPragma selector numArgs = 1 ifTrue: [ 
				self perform: aPragma selector withArguments: { aComposite } ] ]