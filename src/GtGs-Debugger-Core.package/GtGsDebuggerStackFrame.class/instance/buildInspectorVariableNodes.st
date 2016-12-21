private
buildInspectorVariableNodes
	| currentNodes actualReceiver |
	currentNodes := OrderedCollection new.
	currentNodes addAll: (self buildVariables: self baseNodeNames withType: 'implicit').
	currentNodes addAll: (self buildVariables: self argAndTempNames withType: 'temp' ).
	actualReceiver := self objectFor: '(self)' ifAbsent: [ ^ currentNodes ].
	currentNodes addAll: ((actualReceiver gtGsVariableValuePairsWithSelfIf: false) collect: [ :aPair |
		GtGsDebuggerInspectorVariableNode new
			variableName: aPair key;
			type: 'attribute';
			targetObject: aPair value ]).
	^ currentNodes