*test_gsinspector-Core
gtGsInspectorRawTreePresentationWith: aSerializer

	^ GtGsGlmTreePresentation new
		titleBlock: [ 'Raw' ];
		displayBlock: [
			self gsGtVariableValuePairs ];
		childrenBlock: [ :anOop | |targetObject|
			targetObject := (Object _objectForOop: anOop).
			targetObject gsGtVariableValuePairs ];
		formatBlock: [ :anAssociation | anAssociation key, ':  ', anAssociation value inspectorName ];
		iconIdBlock: [ :anAssociation | anAssociation value class gsGtClassIconId ];
		oopComputationBlock: [ :anAssociation | anAssociation value asOop ]