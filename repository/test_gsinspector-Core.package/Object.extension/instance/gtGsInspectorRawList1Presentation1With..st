*test_gsinspector-Core
gtGsInspectorRawList1Presentation1With: aSerializer

	^ GtGsGlmListPresentation1 new
		titleBlock: [ self inspectorName ];
		displayBlock: [ |values instVarValue|
			values := OrderedCollection new.
			self class allInstVarNames withIndexDo: [ :each :index |
				instVarValue := self instVarAt: index.
				values add: (instVarValue asOop -> each ) ].
			aSerializer toString: values ]