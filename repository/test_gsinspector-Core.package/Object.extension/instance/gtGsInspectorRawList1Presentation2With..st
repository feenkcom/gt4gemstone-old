*test_gsinspector-Core
gtGsInspectorRawList1Presentation2With: aSerializer

	^ GtGsGlmListPresentation1 new
		titleBlock: [ self inspectorName, ' Raw 2' ];
		displayBlock: [ |values instVarValue|
			values := OrderedCollection new.
			self class allInstVarNames withIndexDo: [ :each :index |
				instVarValue := self instVarAt: index.
				values add: (instVarValue asOop -> (each, ' -> ', instVarValue inspectorName) ) ].
			aSerializer toString: values ]