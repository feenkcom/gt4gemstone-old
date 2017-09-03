*GtGs-Examples-AddressBook-Extensions-Pharo
contactsBrowser

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtGsInspectorAContactsOn: . ABContact>>#gtGsInspectorCContactOn:};
  		openOn: ABAddressBook default