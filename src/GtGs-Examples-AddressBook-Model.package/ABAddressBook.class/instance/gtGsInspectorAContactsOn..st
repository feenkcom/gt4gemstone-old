printing
gtGsInspectorAContactsOn: aComposite
	<gtInspectorPresentationOrder: 5>
	
	aComposite table
		title: 'Contacts';
		display: [ self contacts ];
		column: 'Name' evaluated: [ :aContact | aContact fullName ] width: 150;
		column: 'Telephone' evaluated: [ :aContact | 
			aContact address telephone fullNumber ]