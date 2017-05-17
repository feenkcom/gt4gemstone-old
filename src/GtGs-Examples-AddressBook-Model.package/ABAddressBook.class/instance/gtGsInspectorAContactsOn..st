printing
gtGsInspectorAContactsOn: aComposite
	<gtInspectorPresentationOrder: 5>
	
	aComposite fastTable
		enableLazyLoading;
		title: 'Contacts';
		display: [ self contacts ];
		column: 'Name' evaluated: [ :aContact |
			 aContact fullName ];
		column: 'Telephone' evaluated: [ :aContact | 
			aContact address telephone fullNumber ]