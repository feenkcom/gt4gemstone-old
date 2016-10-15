*GtGs-Examples-AddressBook-Extensions-Pharo
spotterForAddressFileFor: aStep
	<spotterOrder: 40>

	self isAddressBookFile
		ifFalse: [^ self].

	aStep listProcessor
		title: 'Contacts';
		allCandidates: [ self contactsFromFile ];
		itemName: #fullName;
		filter: GTFilterSubstrings;
		wantsToDisplayOnEmptyQuery: true