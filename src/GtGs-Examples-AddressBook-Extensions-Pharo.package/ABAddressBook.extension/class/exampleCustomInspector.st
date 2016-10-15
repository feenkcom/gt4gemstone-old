*GtGs-Examples-AddressBook-Extensions-Pharo
exampleCustomInspector

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtContactsOn: . ABContact>>#gtContactOn:};
  		openOn: ABAddressBook default