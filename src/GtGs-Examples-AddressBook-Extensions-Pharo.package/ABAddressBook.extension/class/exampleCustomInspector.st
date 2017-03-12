*GtGs-Examples-AddressBook-Extensions-Pharo
exampleCustomInspector

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtGsInspectorContactsOn: . ABContact>>#gtGsInspectorContactOn:};
  		openOn: ABAddressBook default