*GtGs-Examples-AddressBook-Extensions-Pharo
contactsBrowser

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtGsInspectorContactsOn: . ABContact>>#gtGsInspectorContactOn:};
  		openOn: ABAddressBook default