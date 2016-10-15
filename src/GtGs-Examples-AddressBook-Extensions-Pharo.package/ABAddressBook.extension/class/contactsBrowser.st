*GtGs-Examples-AddressBook-Extensions-Pharo
contactsBrowser

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtContactsOn: . ABContact>>#gtContactOn:};
  		openOn: ABAddressBook default