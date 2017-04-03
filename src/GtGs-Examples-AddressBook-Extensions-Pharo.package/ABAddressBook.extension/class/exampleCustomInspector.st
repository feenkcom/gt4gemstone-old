*GtGs-Examples-AddressBook-Extensions-Pharo
exampleCustomInspector

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtGsInspectorAContactsOn: . ABContact>>#gtGsInspectorAContactOn:};
  		openOn: ABAddressBook default