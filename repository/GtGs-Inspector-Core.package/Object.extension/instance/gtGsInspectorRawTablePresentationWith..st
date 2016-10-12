*GtGs-Inspector-Core
gtGsInspectorRawTablePresentationWith: aSerializer
	<gtGsInspectorPresentationOrder: 6>

	^ GtGsGlmTreePresentation new
		titleBlock: [ 'Raw - Table' ];
		displayBlock: [
			self gtGsVariableValuePairs ];
		children: [ :anAssociation |
			anAssociation value gtGsVariableValuePairs ];
		column: 'Variable' evaluated: [ :anAssociation | anAssociation key ];
		column: 'Variable' evaluated: [ :anAssociation | anAssociation value gtGsInspectorName ];
		iconIdBlock: [ :anAssociation | anAssociation value class gtGsClassIconId ];
		sendBlock: [ :anAssociation | anAssociation value ]