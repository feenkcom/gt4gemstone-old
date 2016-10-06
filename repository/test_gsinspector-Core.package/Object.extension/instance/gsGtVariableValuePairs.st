*test_gsinspector-Core
gsGtVariableValuePairs
	| instVarNames bindings indexedVarsSize |
	instVarNames := self class allInstVarNames.
	indexedVarsSize := self basicSize - instVarNames size.
	bindings := OrderedCollection new: instVarNames size.
	
	1 to: (indexedVarsSize min: 21) do: [ :index | 
		bindings add: (index asString -> (self basicAt: index)) ].
	
	((indexedVarsSize - 20) max: 22) to: indexedVarsSize do: [ :index | 
		bindings add: (index asString -> (self basicAt: index)) ].
	
	instVarNames withIndexDo: [ :each :index | 
		bindings add: (each -> (self instVarAt: index))].
	^ bindings