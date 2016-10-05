*test_gsinspector-Core
gtGsInspectorRawTreePresentationWith: aSerializer

	^ GtGsGlmTreePresentation new
		titleBlock: [ self inspectorName ];
		displayBlock: [
			self class allInstVarNames withIndexDo: [ :each :index | 
				each -> (self instVarAt: index)] ];
		childrenBlock: [ :anOop | |targetObject|
			targetObject := (Object _objectForOop: anOop).
			targetObject class allInstVarNames withIndexDo: [ :each :index | 
				each -> (targetObject instVarAt: index) ] ];
		formatBlock: [ :anAssociation |  anAssociation key, anAssociation value inspectorName ];
		oopComputationBlock: [ :anAssociation | anAssociation value oop ]