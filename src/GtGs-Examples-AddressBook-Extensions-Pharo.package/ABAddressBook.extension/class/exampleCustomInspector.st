*GtGs-Examples-AddressBook-Extensions-Pharo
exampleCustomInspector

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtGsInspectorContactsOn: . ABContact>>#gtGsInspectorAContactOn:};
  		openOn: ABAddressBook default