*GtGs-Examples-AddressBook-Extensions-Pharo
exampleCustomInspector

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtContactsOn: . ABContact>>#gtGsContactOn:};
  		openOn: ABAddressBook default