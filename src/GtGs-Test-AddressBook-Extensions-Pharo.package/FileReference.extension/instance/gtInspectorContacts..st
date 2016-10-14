*GtGs-Test-AddressBook-Extensions-Pharo
gtInspectorContacts: aComposite
	<gtInspectorPresentationOrder: 0>
	
	^ aComposite list 
		title: 'Contacts';
		display: [ self contactsFromFile ];
		format: #fullName;
		icon: #icon;
		when: [ self isAddressBookFile ]