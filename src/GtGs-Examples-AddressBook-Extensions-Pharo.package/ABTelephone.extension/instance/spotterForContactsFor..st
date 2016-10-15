*GtGs-Examples-AddressBook-Extensions-Pharo
spotterForContactsFor: aStep
	<spotterOrder: 10>
	
	(aStep hasPreviousNavigationFromClass: ABAddressBook) ifFalse: [ ^ self  ].
	
	^ aStep listProcessor 
		title: 'Contacts';
		candidatesLimit: Float infinity;
		allCandidates: [ aStep previousStep origin contactsWithTelephone: self number ];
		matchSubstring 