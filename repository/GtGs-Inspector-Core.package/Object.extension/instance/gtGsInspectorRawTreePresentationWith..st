*GtGs-Inspector-Core
gtGsInspectorRawTreePresentationWith: aSerializer

	^ GtGsGlmTreePresentation new
		titleBlock: [ 'Raw' ];
		displayBlock: [
			self gsGtVariableValuePairs ];
		childrenBlock: [ :anAssociation |
			anAssociation value gsGtVariableValuePairs ];
		formatBlock: [ :anAssociation | anAssociation key, ':  ', anAssociation value gtGsInspectorName ];
		iconIdBlock: [ :anAssociation | anAssociation value class gsGtClassIconId ];
		sendBlock: [ :anAssociation | anAssociation value ]