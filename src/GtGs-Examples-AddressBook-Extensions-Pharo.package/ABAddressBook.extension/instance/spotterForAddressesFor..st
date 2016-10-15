*GtGs-Examples-AddressBook-Extensions-Pharo
spotterForAddressesFor: aStep
	<spotterOrder: 10>
	^ aStep listProcessor 
		title: 'Addresses';
		allCandidates: [ (self contacts collect: #address as: Set) asOrderedCollection ];
		candidatesLimit: 7;
		itemName: [:each | each city, ', ', each country];
		matchSubstrings