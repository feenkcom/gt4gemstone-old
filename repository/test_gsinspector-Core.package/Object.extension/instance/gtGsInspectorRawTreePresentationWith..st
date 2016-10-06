*test_gsinspector-Core
gtGsInspectorRawTreePresentationWith: aSerializer

	^ GtGsGlmTreePresentation new
		titleBlock: [ 'Raw' ];
		displayBlock: [
			self gsGtVariableValuePairsFor: self ];
		childrenBlock: [ :anOop | |targetObject|
			targetObject := (Object _objectForOop: anOop).
			self gsGtVariableValuePairsFor: targetObject ];
		formatBlock: [ :anAssociation | anAssociation key, ':  ', anAssociation value inspectorName ];
		iconIdBlock: [ :anAssociation | anAssociation value class gsGtClassIconId ];
		oopComputationBlock: [ :anAssociation | anAssociation value asOop ]