*GtGs-Inspector-Core
gtGsInspectorPresentationsIn: aComposite inContext: aContext
	| objectClass inspectorSelectors |
	
	objectClass := Reflection classOf: self.
	inspectorSelectors := objectClass allSelectors select: [ :aSelector |
		((objectClass lookupSelector: aSelector) sourceString includesString:  '<gtInspectorPresentationOrder:') and: [ 
			(aSelector beginsWith: 'gtGsInspector') or: [ aSelector beginsWith: 'gtInspector' ] ]  ].
	inspectorSelectors do: [ :aSelector | 
		self perform: aSelector selector withArguments: { aComposite } ]

	"| pragmas |
	pragmas := Pragma
		allNamed: #gtInspectorPresentationOrder:
		from: (Reflection classOf: self)
		to: Object
		sortedUsing: [ :x :y | (x argumentAt: 1) < (y argumentAt: 1) ].

	pragmas
		do: [ :aPragma | 
			aPragma selector numArgs = 1 ifTrue: [ 
				self perform: aPragma selector withArguments: { aComposite } ] ]"