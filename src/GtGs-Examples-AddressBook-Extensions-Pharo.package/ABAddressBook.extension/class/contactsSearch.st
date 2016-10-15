*GtGs-Examples-AddressBook-Extensions-Pharo
contactsSearch

	GTSpotterMorph new
		extent: 400@500;
		spotterModel: (GTSpotter on: ABAddressBook default);
		openCenteredInWorld