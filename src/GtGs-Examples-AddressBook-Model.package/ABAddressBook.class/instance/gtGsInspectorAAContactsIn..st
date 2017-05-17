as yet unclassified
gtGsInspectorAAContactsIn: aComposite
	<gtInspectorPresentationOrder: 10>
	aComposite fastTable
		enableLazyLoading;
		title: 'Contacts2';
		display: [ self contacts ];
		column: [ 'Name' ] evaluated: [ :aContact | aContact fullName ];
		column: [ 'Telephone' ] evaluated: [ :aContact |
			aContact address telephone ]