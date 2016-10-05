*test_gsinspector-Core
instVarPairsFor: anObject
	| instVarNames instVarPairs |
	instVarNames := anObject class allInstVarNames.
	instVarPairs := Array new: instVarNames size.
	anObject class allInstVarNames withIndexDo: [ :each :index | 
		instVarPairs add: each -> (self instVarAt: index)].
	^ instVarPairs