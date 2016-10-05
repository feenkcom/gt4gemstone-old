*test_gsinspector-Core
instVarPairsFor: anObject
	| instVarNames instVarPairs |
	instVarNames := anObject class allInstVarNames.
	instVarPairs := Array new: instVarNames size.
	instVarNames withIndexDo: [ :each :index | 
		instVarPairs add: (each -> (anObject instVarAt: index))].
	^ instVarPairs