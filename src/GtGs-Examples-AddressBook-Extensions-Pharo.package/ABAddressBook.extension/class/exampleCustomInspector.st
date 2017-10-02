*GtGs-Examples-AddressBook-Extensions-Pharo
exampleCustomInspector

	GTInspector new
  		filterByMethods: {ABAddressBook>>#gtGsInspectorAContactsOn: . ABContact>>#gtGsInspectorCContactOn:};
  		openOn: ABAddressBook default