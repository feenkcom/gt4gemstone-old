*GtGs-Examples-AddressBook-Extensions-Pharo
exampleCustomSpotter

	GTSpotterMorph new
		extent: 400@500;
		spotterModel: (GTSpotter
			withProcessors: {
				GTSpotter>>#spotterAddressBookFor:.
				ABAddressBook>>#spotterForAddressesFor:.
				ABAddressBook>>#spotterForPeopleFor:.
				ABAddressBook>>#spotterForTelephonesFor:.
				ABAddress>>#spotterForPeopleFor:.
				ABTelephone>>#spotterForContactsFor: });
		openCenteredInWorld