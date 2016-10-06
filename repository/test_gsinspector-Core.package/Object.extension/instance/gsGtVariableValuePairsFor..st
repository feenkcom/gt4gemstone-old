*test_gsinspector-Core
gsGtVariableValuePairsFor: anObject
	| instVarNames bindings |
	instVarNames := anObject class allInstVarNames.
	bindings := OrderedCollection new: instVarNames size.
	
	1 to: (self size min: 21) do: [ :index | 
		bindings add: (index -> (self basicAt: index)) ].
	
	((self size - 20) max: 22) to: (self size) do: [ :index | 
		bindings add: (index -> (self basicAt: index)) ].
	
	instVarNames withIndexDo: [ :each :index | 
		bindings add: (each -> (anObject instVarAt: index))].
	^ bindings