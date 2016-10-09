*test_gsinspector-Core
gtGsInspectorRawTreePresentationWith: aSerializer

	^ GtGsGlmTreePresentation new
		titleBlock: [ 'Raw' ];
		displayBlock: [
			self gsGtVariableValuePairs ];
		childrenBlock: [ :anObject |
			anObject gsGtVariableValuePairs ];
		formatBlock: [ :anAssociation | anAssociation key, ':  ', anAssociation value inspectorName ];
		iconIdBlock: [ :anAssociation | anAssociation value class gsGtClassIconId ];
		sendBlock: [ :anAssociation | anAssociation value ]