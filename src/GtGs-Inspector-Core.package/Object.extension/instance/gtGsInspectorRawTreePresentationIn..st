*GtGs-Inspector-Core
gtGsInspectorRawTreePresentationIn: aComposite
	"<gtInspectorPresentationOrder: 6>"
	
	^ aComposite tree
		title: [ 'Raw' ];
		display: [
			self gtGsVariableValuePairsWithSelfIf: true ];
		children: [ :anAssociation |
			anAssociation value gtGsVariableValuePairsWithSelfIf: false ];
		format: [ :anAssociation | anAssociation key, ':  ', anAssociation value gtGsInspectorName ];
		iconIdBlock: [ :anAssociation | anAssociation value class gtGsClassIconId ];
		send: [ :anAssociation | anAssociation value ];
		when: [ self gtGsIsGemstone ]