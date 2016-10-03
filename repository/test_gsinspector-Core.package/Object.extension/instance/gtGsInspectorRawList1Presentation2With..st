*test_gsinspector-Core
gtGsInspectorRawList1Presentation2With: aSerializer

	^ GtGsGlmListPresentation1 new
		titleBlock: [ self inspectorName ];
		displayBlock: [ |stringValues|
			stringValues := OrderedCollection new.
			self class allInstVarNames withIndexDo: [ :each :index |
				stringValues add: (self instVarAt: index) inspectorName ].
			aSerializer toString: stringValues ]