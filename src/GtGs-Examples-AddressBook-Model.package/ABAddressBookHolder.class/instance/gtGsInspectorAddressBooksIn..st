printing
gtGsInspectorAddressBooksIn: aComposite
	<gtInspectorPresentationOrder: 9>
	
	^ aComposite list 	
		title: 'Address Books';
		display: [ self addressBooks ];
		format: [ :anAddressBook | anAddressBook label ]