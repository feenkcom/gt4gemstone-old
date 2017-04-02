*GtGs-Examples-AddressBook-Extensions-Pharo
contactsBrowser

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtGsInspectorContactsOn: . ABContact>>#gtGsInspectorAContactOn:};
  		openOn: ABAddressBook default