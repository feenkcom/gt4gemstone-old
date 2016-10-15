*GtGs-Examples-AddressBook-Extensions-Pharo
spotterForPeopleFor: aStep
	<spotterOrder: 10>
	
	(aStep hasPreviousNavigationFromClass: ABAddressBook ) ifFalse: [ ^ self  ].
	
	^ aStep listProcessor 
		title: 'People';
		itemName: [ :contact | contact fullName ];
		allCandidates: [ 
			aStep previousOrigin contactsWithAddress: self ];
		candidatesLimit: 10;
		matchSubstrings