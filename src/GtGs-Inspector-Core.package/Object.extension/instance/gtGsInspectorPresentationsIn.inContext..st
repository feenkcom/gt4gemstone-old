*GtGs-Inspector-Core
gtGsInspectorPresentationsIn: aComposite inContext: aContext
	| objectClass inspectorSelectors |
	
	objectClass := Reflection classOf: self.
	inspectorSelectors := objectClass allSelectors select: [ :aSelector |
		aContext isMethodCreatingInspectorPresentation: (objectClass gtGsLookupSelector: aSelector) ].
	inspectorSelectors := inspectorSelectors asSet.
	inspectorSelectors remove: #gtGsInspectorPresentationsIn:inContext: ifAbsent: [].
	
	inspectorSelectors := inspectorSelectors sortWithBlock: [ :aSelector : anotherSelector |
		aSelector < anotherSelector ].
	
	inspectorSelectors do: [ :aSelector | 
		self perform: aSelector withArguments: { aComposite } ]

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