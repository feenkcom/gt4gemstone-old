*GtGs-Test-AddressBook-Extensions-Pharo
contactsAddressesSearch

	GTSpotterMorph new
		extent: 400@500;
		spotterModel: (GTSpotter 
			on: ABAddressBook default
			withProcessors: {
				ABAddressBook>>#spotterForAddressesFor:.
				ABAddress>>#spotterForPeopleFor: });
		openCenteredInWorld