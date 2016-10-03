*test_gsinspector-Core
gtGsInspectorRawList1Presentation1With: aSerializer

	^ GtGsGlmPresentation1 new
		titleBlock: [ self inspectorName ];
		displayBlock: [ aSerializer toString: self class allInstVarNames ]