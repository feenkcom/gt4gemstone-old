printing
gtGsInspectorAddressBooksIn: aComposite

	^ aComposite list 	
		title: 'Address Books';
		display: [ self addressBooks ];
		format: [ :anAddressBook | anAddressBook label ]