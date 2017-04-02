*GtGs-Examples-AddressBook-Extensions-Pharo
contactsBrowser

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtGsInspectorAContactsOn: . ABContact>>#gtGsInspectorAContactOn:};
  		openOn: ABAddressBook default