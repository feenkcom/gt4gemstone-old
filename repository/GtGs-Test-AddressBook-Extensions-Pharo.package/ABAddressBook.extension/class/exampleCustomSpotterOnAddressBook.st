*GtGs-Test-AddressBook-Extensions-Pharo
exampleCustomSpotterOnAddressBook

	GTSpotterMorph new
		extent: 400@500;
		spotterModel: (GTSpotter on: ABAddressBook default);
		openCenteredInWorld