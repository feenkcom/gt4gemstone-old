*GtGs-Inspector-Core
gtGsInspectorRawTablePresentationIn: aComposite
	<gtInspectorPresentationOrder: 10>

	^ aComposite table
		title: [ 'Raw' ];
		display: [
			self gtGsVariableValuePairsWithSelfIf: true ];
		children: [ :anAssociation |
			anAssociation value gtGsVariableValuePairsWithSelfIf: false ];
		column: 'Variable' evaluated: [ :anAssociation | anAssociation key ];
		column: 'Value' evaluated: [ :anAssociation | anAssociation value gtGsInspectorName ];
		iconIdBlock: [ :anAssociation | anAssociation value class gtGsClassIconId ];
		send: [ :anAssociation | anAssociation value ];
		when: [ self gtGsIsGemstone ]