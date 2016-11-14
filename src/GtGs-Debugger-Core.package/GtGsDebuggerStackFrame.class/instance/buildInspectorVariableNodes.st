as yet unclassified
buildInspectorVariableNodes
	| currentNodes actualReceiver |
	currentNodes := OrderedCollection new.
	currentNodes addAll: (self buildVariables: self baseNodeNames withType: 'implicit').
	currentNodes addAll: (self buildVariables: self argAndTempNames withType: 'temp' ).
	actualReceiver := self rawReceiver ~~ self frameSelf 
		ifTrue: [ self receiver ]
      ifFalse: [ self frameSelf ].
	currentNodes addAll: ((actualReceiver gtGsVariableValuePairsWithSelfIf: false) collect: [ :aPair |
		GtGsDebuggerInspectorVariableNode new
			variableName: aPair key;
			type: 'attribute';
			targetObject: aPair value ]).
	^ currentNodes