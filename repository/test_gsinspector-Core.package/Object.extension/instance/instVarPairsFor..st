*test_gsinspector-Core
instVarPairsFor: anObject
	| instVarNames instVarPairs |
	instVarNames := anObject class allInstVarNames.
	instVarPairs := OrderedCollection new: instVarNames size.
	instVarNames withIndexDo: [ :each :index | 
		instVarPairs add: (each -> (anObject instVarAt: index))].
	^ instVarPairs