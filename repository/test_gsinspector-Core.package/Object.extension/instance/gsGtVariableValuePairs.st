*test_gsinspector-Core
gsGtVariableValuePairs
	| instVarNames bindings |
	instVarNames := self class allInstVarNames.
	bindings := OrderedCollection new: instVarNames size.
	
	1 to: (self size min: 21) do: [ :index | 
		bindings add: (index asString -> (self basicAt: index)) ].
	
	((self size - 20) max: 22) to: (self size) do: [ :index | 
		bindings add: (index asString -> (self basicAt: index)) ].
	
	instVarNames withIndexDo: [ :each :index | 
		bindings add: (each -> (self instVarAt: index))].
	^ bindings