*GtGs-Inspector-Core
gtGsVariableValuePairsWithSelfIf: aBoolean
| instVarNames bindings indexedVarsSize |
	instVarNames := self class allInstVarNames.
	indexedVarsSize := 0.
	bindings := OrderedCollection new: instVarNames size + 1.
	
	aBoolean ifTrue: [ bindings add: 'self' -> self ].
	
	instVarNames gtGsWithIndexDo: [ :each :index | 
		bindings add: (each -> (Reflection fetchFrom: self at: index))].
	
	^ bindings