*test_gsinspector-Core
gtGsInspectorRawList1Presentation1With: aSerializer

	^ GtGsGlmPresentation1 new
		title: [ self inspectorName ];
		display: [ aSerializer toString: self class allInstVarNames ]