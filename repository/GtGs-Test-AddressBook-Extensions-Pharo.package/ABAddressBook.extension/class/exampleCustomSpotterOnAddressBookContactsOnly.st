*GtGs-Test-AddressBook-Extensions-Pharo
exampleCustomSpotterOnAddressBookContactsOnly

	GTSpotterMorph new
		extent: 400@500;
		spotterModel: (GTSpotter 
			on: ABAddressBook default
			withProcessors: {
				ABAddressBook>>#spotterForPeopleFor: });
		openCenteredInWorld