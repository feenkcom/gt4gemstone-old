*test_gsinspector-Core
gtGsInspectorRawList1Presentation2With: aSerializer

	^ GtGsGlmPresentation1 new
		title: [ self inspectorName ];
		display: [ |stringValues|
			stringValues := OrderedCollection new.
			self class allInstVarNames withIndexDo: [ :each :index |
				stringValues add: (self instVarAt: index) inspectorName ].
			aSerializer toString: stringValues ]