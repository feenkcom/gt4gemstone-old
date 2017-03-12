*GtGs-Examples-AddressBook-Extensions-Pharo
contactsBrowser

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtContactsOn: . ABContact>>#gtGsContactOn:};
  		openOn: ABAddressBook default