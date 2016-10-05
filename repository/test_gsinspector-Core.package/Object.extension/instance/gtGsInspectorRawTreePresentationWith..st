*test_gsinspector-Core
gtGsInspectorRawTreePresentationWith: aSerializer

	^ GtGsGlmTreePresentation new
		titleBlock: [ self inspectorName ];
		displayBlock: [
			self instVarPairsFor: self ];
		childrenBlock: [ :anOop | |targetObject|
			targetObject := (Object _objectForOop: anOop).
			self instVarPairsFor: targetObject ];
		formatBlock: [ :anAssociation |  anAssociation key, anAssociation value inspectorName ];
		oopComputationBlock: [ :anAssociation | anAssociation value asOop ]